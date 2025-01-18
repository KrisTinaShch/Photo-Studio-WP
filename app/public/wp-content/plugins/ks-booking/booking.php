<?php
/*
Plugin Name: Booking Plugin
Description: Плагин для бронирования с календарём и платежами.
Version: 1.0
Author: Kristina Shcheglova
*/

if (!defined('ABSPATH')) {
    exit; 
}

function booking_plugin_create_table() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';
    $charset_collate = $wpdb->get_charset_collate();

    $sql = "CREATE TABLE $table_name (
        id mediumint(9) NOT NULL AUTO_INCREMENT,
        booking_date date NOT NULL,
        booking_time varchar(10) NOT NULL,
        user_name varchar(100) NOT NULL,
        user_phone varchar(20) NOT NULL,
        user_email varchar(100) NOT NULL,
        UNIQUE KEY id (id)
    ) $charset_collate;";

    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);
}
register_activation_hook(__FILE__, 'booking_plugin_create_table');

function booking_plugin_enqueue_scripts() {
    wp_enqueue_style('booking-plugin-style', plugin_dir_url(__FILE__) . 'style.css');
    wp_enqueue_script('booking-plugin-script', plugin_dir_url(__FILE__) . 'script.js', ['jquery'], null, true);
    wp_localize_script('booking-plugin-script', 'bookingAjax', [
        'ajax_url' => admin_url('admin-ajax.php'),
        'nonce' => wp_create_nonce('booking_nonce'),
    ]);
}
add_action('wp_enqueue_scripts', 'booking_plugin_enqueue_scripts');

function booking_plugin_calendar_shortcode() {
    ob_start();
    ?>
    <div id="booking-calendar"></div>
    <div id="booking-modal" style="display: none;">
        <h3>Выберите время</h3>
        <div id="available-times"></div>
        <button id="booking-confirm">Подтвердить</button>
    </div>
    <div id="user-info-modal" style="display: none;">
        <h3>Введите ваши данные</h3>
        <form id="user-info-form">
            <label for="user-name">Имя:</label>
            <input type="text" id="user-name" name="user_name" required>
            <label for="user-phone">Телефон:</label>
            <input type="text" id="user-phone" name="user_phone" required>
            <label for="user-email">Емейл:</label>
            <input type="email" id="user-email" name="user_email" required>
            <button type="submit">Отправить</button>
        </form>
    </div>
    <?php
    return ob_get_clean();
}
add_shortcode('booking_calendar', 'booking_plugin_calendar_shortcode');

function booking_plugin_get_available_times() {
    check_ajax_referer('booking_nonce', 'nonce');

    $day = isset($_POST['day']) ? intval($_POST['day']) : 0;
    $month = isset($_POST['month']) ? intval($_POST['month']) : date('m');
    $year = isset($_POST['year']) ? intval($_POST['year']) : date('Y');

    if ($day <= 0 || !checkdate($month, $day, $year)) {
        wp_send_json_error(['message' => 'Неверное дата.']);
    }

    $selected_date = sprintf('%04d-%02d-%02d', $year, $month, $day);

    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';

    $available_times = ['10:00', '11:00', '12:00', '13:00', '14:00'];
    $booked_times = $wpdb->get_col($wpdb->prepare(
        "SELECT booking_time FROM $table_name WHERE booking_date = %s",
        $selected_date
    ));

    $available_times = array_diff($available_times, $booked_times);

    if (empty($available_times)) {
        wp_send_json_error(['message' => 'Все слоты заняты.']);
    }

    wp_send_json_success(['times' => array_values($available_times)]);
}
add_action('wp_ajax_get_available_times', 'booking_plugin_get_available_times');
add_action('wp_ajax_nopriv_get_available_times', 'booking_plugin_get_available_times');

function booking_plugin_book_time_slot() {
    check_ajax_referer('booking_nonce', 'nonce');

    $day = isset($_POST['day']) ? intval($_POST['day']) : 0;
    $month = isset($_POST['month']) ? intval($_POST['month']) : date('m');
    $year = isset($_POST['year']) ? intval($_POST['year']) : date('Y');
    $time = isset($_POST['time']) ? sanitize_text_field($_POST['time']) : '';
    $user_name = isset($_POST['user_name']) ? sanitize_text_field($_POST['user_name']) : '';
    $user_phone = isset($_POST['user_phone']) ? sanitize_text_field($_POST['user_phone']) : '';
    $user_email = isset($_POST['user_email']) ? sanitize_email($_POST['user_email']) : '';

    if ($day <= 0 || empty($time) || empty($user_name) || empty($user_phone) || empty($user_email) || !checkdate($month, $day, $year)) {
        wp_send_json_error(['message' => 'Неверные данные.']);
    }

    $booking_date = sprintf('%04d-%02d-%02d', $year, $month, $day);

    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';

    $result = $wpdb->insert($table_name, [
        'booking_date' => $booking_date,
        'booking_time' => $time,
        'user_name'    => $user_name,
        'user_phone'   => $user_phone,
        'user_email'   => $user_email,
    ]);

    if ($result) {
        wp_send_json_success(['message' => 'Бронь сохранена.']);
    } else {
        wp_send_json_error(['message' => 'Ошибка сохранения.']);
    }
}
add_action('wp_ajax_book_time_slot', 'booking_plugin_book_time_slot');
add_action('wp_ajax_nopriv_book_time_slot', 'booking_plugin_book_time_slot');

function booking_plugin_get_unavailable_dates() {
    check_ajax_referer('booking_nonce', 'nonce');

    $year = isset($_POST['year']) ? intval($_POST['year']) : date('Y');
    $month = isset($_POST['month']) ? intval($_POST['month']) : date('m');

    $start_date = sprintf('%04d-%02d-01', $year, $month);
    $end_date = date('Y-m-t', strtotime($start_date));

    $available_times = ['10:00', '11:00', '12:00', '13:00', '14:00'];
    $total_slots = count($available_times);

    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';
    $results = $wpdb->get_results($wpdb->prepare(
        "SELECT booking_date, COUNT(DISTINCT booking_time) as booked_slots 
         FROM $table_name 
         WHERE booking_date BETWEEN %s AND %s 
         GROUP BY booking_date",
        $start_date, $end_date
    ));

    $unavailable_dates = [];

    foreach ($results as $result) {
        if ((int)$result->booked_slots >= $total_slots) {
            $unavailable_dates[] = $result->booking_date;
        }
    }

    wp_send_json_success(['unavailable_dates' => $unavailable_dates]);
}
add_action('wp_ajax_get_unavailable_dates', 'booking_plugin_get_unavailable_dates');
add_action('wp_ajax_nopriv_get_unavailable_dates', 'booking_plugin_get_unavailable_dates');
