jQuery(document).ready(function ($) {
    const calendar = $('#booking-calendar');
    const controls = $('<div id="calendar-controls"><button id="prev-month">← Предыдущий месяц</button><span id="current-month-year"></span><button id="next-month">Следующий месяц →</button></div>');

    calendar.before(controls);

    let currentDate = new Date();
    let selectedDate = null;
    let selectedTime = null;

    function renderCalendar(date) {
        const year = date.getFullYear();
        const month = date.getMonth();
        const daysInMonth = new Date(year, month + 1, 0).getDate();

        // Обновляем заголовок
        $('#current-month-year').text(`${year}-${String(month + 1).padStart(2, '0')}`);

        // Очищаем календарь
        calendar.empty();

        // Запрос недоступных дат
        $.post(bookingAjax.ajax_url, {
            action: 'get_unavailable_dates',
            nonce: bookingAjax.nonce,
            year: year,
            month: month + 1 // JS месяцы начинаются с 0
        }, function (response) {
            if (response.success) {
                const unavailableDates = response.data.unavailable_dates;

                for (let day = 1; day <= daysInMonth; day++) {
                    const dateString = `${year}-${String(month + 1).padStart(2, '0')}-${String(day).padStart(2, '0')}`;
                    const currentDate = new Date();
                    const loopDate = new Date(year, month, day);

                    const isUnavailable = unavailableDates.includes(dateString) || loopDate < currentDate;

                    const dayClass = isUnavailable ? 'calendar-day unavailable' : 'calendar-day';
                    calendar.append(`<div class="${dayClass}" data-day="${day}" data-month="${month + 1}" data-year="${year}" data-date="${dateString}">${day}</div>`);
                }
            } else {
                console.error('Ошибка получения недоступных дат:', response.data);
            }
        }).fail(function () {
            console.error('Ошибка загрузки недоступных дат.');
        });
    }


    // События переключения месяцев
    $('#prev-month').on('click', function () {
        currentDate.setMonth(currentDate.getMonth() - 1);
        renderCalendar(currentDate);
    });

    $('#next-month').on('click', function () {
        currentDate.setMonth(currentDate.getMonth() + 1);
        renderCalendar(currentDate);
    });

    // Клик по дню
    $('#booking-calendar').on('click', '.calendar-day', function () {
        if ($(this).hasClass('unavailable')) {
            alert('Этот день недоступен для бронирования.');
            return;
        }

        selectedDate = $(this).data('date');
        $('#available-times').html('<p>Загрузка доступных часов...</p>');
        $('#booking-modal').fadeIn();

        // AJAX-запрос для получения доступных часов
        $.post(bookingAjax.ajax_url, {
            action: 'get_available_times',
            nonce: bookingAjax.nonce,
            year: $(this).data('year'),
            month: $(this).data('month'),
            day: $(this).data('day')
        }, function (response) {
            if (response.success) {
                const times = response.data.times;
                if (times.length === 0) {
                    $('#available-times').html('<p>Все слоты на этот день заняты.</p>');
                } else {
                    let timesHtml = '';
                    times.forEach(time => {
                        timesHtml += `<button class="time-slot" data-time="${time}">${time}</button>`;
                    });
                    $('#available-times').html(timesHtml);
                }
            } else {
                $('#available-times').html('<p>Ошибка загрузки часов.</p>');
            }
        }).fail(function () {
            $('#available-times').html('<p>Ошибка сервера при загрузке часов.</p>');
        });
    });

    // Подтверждение времени
    $('#available-times').on('click', '.time-slot', function () {
        selectedTime = $(this).data('time');
        $('#booking-modal').fadeOut();
        $('#user-info-modal').fadeIn();
    });

    // Отправка данных пользователя
    $('#user-info-form').on('submit', function (e) {
        e.preventDefault();

        const userData = {
            action: 'book_time_slot',
            nonce: bookingAjax.nonce,
            day: new Date(selectedDate).getDate(),
            month: new Date(selectedDate).getMonth() + 1,
            year: new Date(selectedDate).getFullYear(),
            time: selectedTime,
            user_name: $('#user-name').val(),
            user_phone: $('#user-phone').val(),
            user_email: $('#user-email').val()
        };

        $.post(bookingAjax.ajax_url, userData, function (response) {
            if (response.success) {
                alert('Бронь успешно создана!');
                $('#user-info-modal').fadeOut();
                renderCalendar(new Date(selectedDate));
            } else {
                alert('Ошибка: ' + response.data.message);
            }
        }).fail(function () {
            alert('Ошибка сервера. Попробуйте позже.');
        });
    });
    $(document).on('click', '.delete-booking', function () {
        const bookingId = $(this).data('id');
        console.log('ID для удаления:', bookingId); // Отладка

        if (!confirm('Вы уверены, что хотите отменить это бронирование?')) {
            return;
        }

        $.post(bookingAjax.ajax_url, {
            action: 'delete_booking',
            nonce: bookingAjax.nonce,
            booking_id: bookingId
        }, function (response) {
            console.log('Ответ сервера:', response); // Отладка

            if (response.success) {
                alert('Бронь успешно отменена.');
                location.reload();
            } else {
                alert('Ошибка: ' + response.data.message);
            }
        }).fail(function () {
            alert('Ошибка сервера. Попробуйте позже.');
        });
    });

    // Инициализация календаря
    renderCalendar(currentDate);
});


