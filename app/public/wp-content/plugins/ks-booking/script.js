// booking
jQuery(document).ready(function ($) {
    // Генерация календаря
    const calendar = $('#booking-calendar');
    const today = new Date();
    const year = today.getFullYear();
    const month = today.getMonth();
    const daysInMonth = new Date(year, month + 1, 0).getDate();

    // Запрос недоступных дат
    $.post(bookingAjax.ajax_url, {
        action: 'get_unavailable_dates',
        nonce: bookingAjax.nonce,
    }, function (response) {
        if (response.success) {
            const unavailableDates = response.data.unavailable_dates;

            // Генерация календаря
            for (let day = 1; day <= daysInMonth; day++) {
                const date = new Date(year, month, day);

                // Генерация строки даты в локальном формате
                const dateString = date.getFullYear() + '-' +
                    String(date.getMonth() + 1).padStart(2, '0') + '-' +
                    String(date.getDate()).padStart(2, '0');

                // Проверяем, является ли день недоступным
                const isUnavailable = unavailableDates.includes(dateString);

                const dayClass = isUnavailable ? 'calendar-day unavailable' : 'calendar-day';
                calendar.append(`<div class="${dayClass}" data-day="${day}">${day}</div>`);
            }
        }
    });

    // Подтверждение времени
    $('#available-times').on('click', '.time-slot', function () {
        const time = $(this).data('time');
        const day = $('#booking-modal').data('day'); // Получаем выбранный день
    
        if (!time || !day) {
            alert('Ошибка: данные о дне или времени отсутствуют.');
            return;
        }
    
        // AJAX-запрос для бронирования
        $.post(bookingAjax.ajax_url, {
            action: 'book_time_slot',
            nonce: bookingAjax.nonce,
            day: day,
            time: time,
        }, function (response) {
            if (response.success) {
                alert('Бронь успешно подтверждена!');
    
                // Убираем забронированный слот из списка доступных
                $(`.time-slot[data-time="${time}"]`).remove();
    
                // Если больше нет доступных временных слотов
                if ($('#available-times .time-slot').length === 0) {
                    // Закрываем модальное окно
                    $('#booking-modal').fadeOut();
    
                    // Обновляем класс дня в календаре
                    const dateElement = $(`#booking-calendar .calendar-day[data-day="${day}"]`);
                    dateElement.addClass('unavailable');
                }
            } else {
                alert('Ошибка бронирования: ' + response.data.message);
            }
        }).fail(function () {
            alert('Ошибка сервера. Попробуйте позже.');
        });
    });
    

    // Клик по дню
    $('#booking-calendar').on('click', '.calendar-day', function () {
        if ($(this).hasClass('unavailable')) {
            alert('Этот день недоступен для бронирования.');
            return; // Блокируем клик
        }

        const day = $(this).data('day'); // Получаем выбранный день
        $('#booking-modal').data('day', day); // Сохраняем выбранный день в модальном окне
        $('#booking-modal').fadeIn();
        $('#available-times').html('<p>Загрузка доступных часов...</p>');

        // AJAX-запрос для получения доступных часов
        $.post(bookingAjax.ajax_url, {
            action: 'get_available_times',
            nonce: bookingAjax.nonce,
            day: day,
        }, function (response) {
            if (response.success) {
                const times = response.data.times;
                let timesHtml = '';
                times.forEach(time => {
                    timesHtml += `<button class="time-slot" data-time="${time}">${time}</button>`;
                });
                $('#available-times').html(timesHtml);
            } else {
                $('#available-times').html(`<p>${response.data.message}</p>`);
            }
        }).fail(function () {
            $('#available-times').html('<p>Ошибка загрузки доступных часов.</p>');
        });
    });



});
