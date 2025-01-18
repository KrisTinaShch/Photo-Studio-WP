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

function booking_plugin_clear_database() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';

    // Удаляем все записи
    $wpdb->query("DELETE FROM $table_name");

    // Или для полного удаления таблицы:
    // $wpdb->query("DROP TABLE IF EXISTS $table_name");
}

// Раскомментируйте строку ниже, чтобы выполнить очистку при следующем обновлении страницы.
// booking_plugin_clear_database();


function booking_plugin_create_table() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';
    $charset_collate = $wpdb->get_charset_collate();

    $sql = "CREATE TABLE $table_name (
        id mediumint(9) NOT NULL AUTO_INCREMENT,
        booking_date date NOT NULL,
        booking_time varchar(10) NOT NULL,
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
    <?php
    return ob_get_clean();
}
add_shortcode('booking_calendar', 'booking_plugin_calendar_shortcode');

function booking_plugin_handle_ajax() {
    check_ajax_referer('booking_nonce', 'nonce');
    wp_send_json_success(['message' => 'AJAX работает!']);
}
add_action('wp_ajax_booking_action', 'booking_plugin_handle_ajax');
add_action('wp_ajax_nopriv_booking_action', 'booking_plugin_handle_ajax');


function booking_plugin_get_available_times() {
    check_ajax_referer('booking_nonce', 'nonce'); // Проверяем nonce для безопасности

    // Получаем данные из запроса
    $day = isset($_POST['day']) ? intval($_POST['day']) : 0;

    if ($day <= 0) {
        wp_send_json_error(['message' => 'Неверные данные: день не указан.']);
    }

    // Преобразуем $day в дату
    $current_month = date('Y-m'); // Текущий месяц и год
    $selected_date = $current_month . '-' . str_pad($day, 2, '0', STR_PAD_LEFT);

    // Проверяем корректность даты
    if (!checkdate(date('m'), $day, date('Y'))) {
        wp_send_json_error(['message' => 'Неверный день']);
    }

    // Логика доступных временных слотов
    $available_times = ['14:00', '15:00', '16:00', '17:00', '18:00'];

    // Проверяем занятые слоты в базе данных
    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';
    $booked_times = $wpdb->get_col($wpdb->prepare(
        "SELECT booking_time FROM $table_name WHERE booking_date = %s",
        $selected_date
    ));

    // Убираем занятые слоты из доступных
    if (!empty($booked_times)) {
        $available_times = array_diff($available_times, $booked_times);
    }

    // Если все слоты заняты
    if (empty($available_times)) {
        wp_send_json_error(['message' => 'Все слоты заняты']);
    }

    // Возвращаем доступные слоты
    wp_send_json_success(['times' => array_values($available_times)]);
}




add_action('wp_ajax_get_available_times', 'booking_plugin_get_available_times');
add_action('wp_ajax_nopriv_get_available_times', 'booking_plugin_get_available_times');



function booking_plugin_book_time_slot() {
    check_ajax_referer('booking_nonce', 'nonce'); // Проверяем nonce

    // Получаем данные из запроса
    $day = isset($_POST['day']) ? intval($_POST['day']) : 0;
    $time = isset($_POST['time']) ? sanitize_text_field($_POST['time']) : '';

    if ($day <= 0 || empty($time)) {
        wp_send_json_error(['message' => 'Неверные данные']);
    }

    // Преобразуем $day в дату
    $current_month = date('Y-m'); // Текущий месяц и год
    $booking_date = $current_month . '-' . str_pad($day, 2, '0', STR_PAD_LEFT);

    // Проверяем, существует ли дата
    if (!checkdate(date('m'), $day, date('Y'))) {
        wp_send_json_error(['message' => 'Неверный день']);
    }

    // Сохраняем данные бронирования
    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';

    $result = $wpdb->insert($table_name, [
        'booking_date' => $booking_date,
        'booking_time' => $time,
        'user_email'   => 'test@example.com', // Временно задаём тестовый email
    ]);

    if ($result) {
        wp_send_json_success(['message' => 'Бронь успешно сохранена']);
    } else {
        wp_send_json_error(['message' => 'Ошибка при сохранении бронирования']);
    }
}


add_action('wp_ajax_book_time_slot', 'booking_plugin_book_time_slot');
add_action('wp_ajax_nopriv_book_time_slot', 'booking_plugin_book_time_slot');

function booking_plugin_get_unavailable_dates() {
    check_ajax_referer('booking_nonce', 'nonce'); // Проверяем nonce для безопасности

    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';

    // Определяем текущий месяц
    $start_date = date('Y-m-01'); // Первый день месяца
    $end_date = date('Y-m-t');   // Последний день месяца

    // Все доступные временные слоты
    $available_times = ['14:00', '15:00', '16:00', '17:00', '18:00'];
    $total_slots = count($available_times);

    // Получаем занятые слоты для каждой даты
    $results = $wpdb->get_results($wpdb->prepare(
        "SELECT booking_date, COUNT(booking_time) as booked_slots 
         FROM $table_name 
         WHERE booking_date BETWEEN %s AND %s 
         GROUP BY booking_date",
        $start_date, $end_date
    ));
    
    $unavailable_dates = [];

    foreach ($results as $result) {
        // Проверяем число забронированных слотов
        if ((int)$result->booked_slots >= $total_slots) {
            $unavailable_dates[] = $result->booking_date; // Добавляем дату в недоступные
        }
    }

    // Возвращаем массив недоступных дат
    wp_send_json_success(['unavailable_dates' => $unavailable_dates]);
}




add_action('wp_ajax_get_unavailable_dates', 'booking_plugin_get_unavailable_dates');
add_action('wp_ajax_nopriv_get_unavailable_dates', 'booking_plugin_get_unavailable_dates');
