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
function booking_plugin_create_admin_menu() {
    add_menu_page(
        'Бронирования', // Название страницы
        'Бронирования', // Название меню
        'manage_options', // Права доступа
        'booking-plugin', // Слаг меню
        'booking_plugin_admin_page', // Функция отображения страницы
        'dashicons-calendar-alt', // Иконка меню
        6 // Позиция меню
    );
}
add_action('admin_menu', 'booking_plugin_create_admin_menu');

function booking_plugin_admin_page() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';

    $bookings = $wpdb->get_results("SELECT * FROM $table_name ORDER BY booking_date DESC");

    ?>
    <div class="wrap">
        <h1>Список бронирований</h1>
        <table class="wp-list-table widefat fixed striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Дата</th>
                    <th>Время</th> <!-- Теперь тут отображается диапазон -->
                    <th>Имя</th>
                    <th>Телефон</th>
                    <th>Емейл</th>
                    <th>Пакет</th>
                    <th>Камеры</th>
                    <th>Действия</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($bookings)): ?>
                    <?php foreach ($bookings as $booking): ?>
                        <tr>
                            <td><?php echo esc_html($booking->id); ?></td>
                            <td><?php echo esc_html($booking->booking_date); ?></td>
                            <td><?php echo esc_html($booking->booking_time); ?></td>
                            <td><?php echo esc_html($booking->user_name); ?></td>
                            <td><?php echo esc_html($booking->user_phone); ?></td>
                            <td><?php echo esc_html($booking->user_email); ?></td>
                            <td><?php echo esc_html($booking->package); ?></td>
                            <td><?php echo esc_html($booking->cameras); ?></td>
                            <td>
                                <button class="delete-booking" data-id="<?php echo esc_attr($booking->id); ?>">Отменить</button>
                            </td>
                        </tr>
                    <?php endforeach; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="9">Нет бронирований</td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
    <?php
}



function booking_plugin_create_table() {
    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';
    $charset_collate = $wpdb->get_charset_collate();

    $sql = "CREATE TABLE IF NOT EXISTS $table_name (
        id mediumint(9) NOT NULL AUTO_INCREMENT,
        booking_date DATE NOT NULL,
        booking_time VARCHAR(10) NOT NULL,
        package INT(2) NOT NULL DEFAULT 1,
        cameras INT(2) NOT NULL DEFAULT 0,
        user_name VARCHAR(100) NOT NULL,
        user_phone VARCHAR(20) NOT NULL,
        user_email VARCHAR(100) NOT NULL,
        PRIMARY KEY (id)
    ) $charset_collate;";

    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);
}

// Вызов при активации плагина
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
add_action('admin_enqueue_scripts', 'booking_plugin_enqueue_scripts');


function booking_plugin_calendar_shortcode() {
    ob_start();
    ?>
    <div id="booking-container">
        <h3>Выберите пакет бронирования</h3>
        <label for="package">Выберите пакет:</label>
        <select id="package" name="package" required>
            <option value="">-- Выберите пакет --</option>
            <option value="1">Аренда студии на 1 час</option>
            <option value="2">Аренда студии на 2 часа</option>
            <option value="3">Аренда студии на 3 часа</option>
            <option value="4">Аренда студии на 9 часов</option>
            <option value="5">Аренда зоны подкаста (1 час)</option>
            <option value="6">Аренда зоны подкаста с техникой (1 час)</option>
        </select>


        <div id="booking-calendar"></div>
        <div id="booking-modal" style="display: none;">
            <h3>Выберите время</h3>
            <div id="available-times"></div>
        </div>

        <div id="camera-selection" style="display: none;">
            <h3>Выберите количество камер</h3>
            <select id="camera-count">
                <option value="1">1 камера</option>
                <option value="2">2 камеры</option>
                <option value="3">3 камеры</option>
            </select>
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
        wp_send_json_error(['message' => 'Неверная дата.']);
    }

    $selected_date = sprintf('%04d-%02d-%02d', $year, $month, $day);
    
    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';

    $available_times = ['10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', '18:00', '19:00', '20:00', '21:00'];
    
    // Получаем все бронирования на эту дату
    $booked_times = $wpdb->get_results($wpdb->prepare(
        "SELECT booking_time FROM $table_name WHERE booking_date = %s",
        $selected_date
    ));

    // Блокируем уже занятые слоты
    foreach ($booked_times as $booking) {
        list($start_time, $end_time) = explode(' - ', $booking->booking_time);
        $start_hour = intval(explode(':', $start_time)[0]);
        $end_hour = intval(explode(':', $end_time)[0]);

        for ($hour = $start_hour; $hour < $end_hour; $hour++) {
            $blocked_time = sprintf("%02d:00", $hour);
            $available_times = array_diff($available_times, [$blocked_time]);
        }
    }

    if (empty($available_times)) {
        wp_send_json_error(['message' => 'Все слоты заняты.']);
    }

    wp_send_json_success(['times' => array_values($available_times)]);
}

add_action('wp_ajax_get_available_times', 'booking_plugin_get_available_times');
add_action('wp_ajax_nopriv_get_available_times', 'booking_plugin_get_available_times');

function booking_plugin_book_time_slot() {
    check_ajax_referer('booking_nonce', 'nonce');

    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';

    // Получаем и валидируем данные
    $day = isset($_POST['day']) ? intval($_POST['day']) : 0;
    $month = isset($_POST['month']) ? intval($_POST['month']) : 0;
    $year = isset($_POST['year']) ? intval($_POST['year']) : 0;
    $start_time = isset($_POST['start_time']) ? sanitize_text_field($_POST['start_time']) : '';
    $duration = isset($_POST['duration']) ? intval($_POST['duration']) : 1;
    $package = isset($_POST['package']) ? sanitize_text_field($_POST['package']) : '';
    $cameras = isset($_POST['cameras']) ? intval($_POST['cameras']) : 0;
    $user_name = isset($_POST['user_name']) ? sanitize_text_field($_POST['user_name']) : '';
    $user_phone = isset($_POST['user_phone']) ? sanitize_text_field($_POST['user_phone']) : '';
    $user_email = isset($_POST['user_email']) ? sanitize_email($_POST['user_email']) : '';

    // Проверяем, что все данные корректны
    if ($day <= 0 || $month <= 0 || $year <= 0 || empty($start_time) || empty($package) || empty($user_name) || empty($user_phone) || empty($user_email)) {
        wp_send_json_error([
            'message' => 'Некорректные данные. Убедитесь, что все поля заполнены.',
            'data' => $_POST
        ]);
    }

    // Формируем `booking_date`
    $booking_date = sprintf('%04d-%02d-%02d', $year, $month, $day);

    // Вычисляем `end_time`
    $start_hour = intval(explode(':', $start_time)[0]);
    $end_hour = $start_hour + $duration;

    // Ограничиваем бронирование по времени работы
    if ($end_hour >= 22) {
        $end_hour = 21;
    }

    $end_time = sprintf("%02d:00", $end_hour);
    $booking_time = "$start_time - $end_time"; // Записываем диапазон

    // Проверяем, занято ли это время
    $existing_booking = $wpdb->get_var($wpdb->prepare(
        "SELECT COUNT(*) FROM $table_name WHERE booking_date = %s AND booking_time LIKE %s",
        $booking_date, "%$start_time%"
    ));

    if ($existing_booking > 0) {
        wp_send_json_error(['message' => 'Это время уже забронировано. Выберите другое.']);
    }

    // Записываем бронь в БД
    $result = $wpdb->insert($table_name, [
        'booking_date'  => $booking_date,
        'booking_time'  => $booking_time, // Теперь записываем корректный диапазон
        'package'       => $package,
        'cameras'       => $cameras,
        'user_name'     => $user_name,
        'user_phone'    => $user_phone,
        'user_email'    => $user_email
    ]);

    if ($result) {
        wp_send_json_success(['message' => 'Бронь успешно сохранена']);
    } else {
        wp_send_json_error([
            'message' => 'Ошибка при сохранении бронирования',
            'db_error' => $wpdb->last_error
        ]);
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

    $available_times = ['10:00', '11:00', '12:00', '13:00', '14:00','15:00','16:00','17:00','18:00','19:00','20:00','21:00'];
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

    // Добавляем прошедшие даты
    $current_date = new DateTime();
    for ($day = 1; $day <= (int)date('t', strtotime($start_date)); $day++) {
        $date = DateTime::createFromFormat('Y-m-d', sprintf('%04d-%02d-%02d', $year, $month, $day));
        if ($date < $current_date) {
            $unavailable_dates[] = $date->format('Y-m-d');
        }
    }

    foreach ($results as $result) {
        if ((int)$result->booked_slots >= $total_slots) {
            $unavailable_dates[] = $result->booking_date;
        }
    }

    wp_send_json_success(['unavailable_dates' => $unavailable_dates]);
}
add_action('wp_ajax_get_unavailable_dates', 'booking_plugin_get_unavailable_dates');
add_action('wp_ajax_nopriv_get_unavailable_dates', 'booking_plugin_get_unavailable_dates');


function booking_plugin_delete_booking() {
    check_ajax_referer('booking_nonce', 'nonce'); // Проверяем nonce для безопасности

    $booking_id = isset($_POST['booking_id']) ? intval($_POST['booking_id']) : 0;

    if ($booking_id <= 0) {
        wp_send_json_error(['message' => 'Неверный ID бронирования.']);
    }

    global $wpdb;
    $table_name = $wpdb->prefix . 'booking';

    // Удаляем запись из базы данных
    $result = $wpdb->delete($table_name, ['id' => $booking_id]);

    if ($result) {
        wp_send_json_success(['message' => 'Бронь успешно отменена.']);
    } else {
        wp_send_json_error(['message' => 'Ошибка при удалении бронирования.']);
    }
}

add_action('wp_ajax_delete_booking', 'booking_plugin_delete_booking');



