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
    
        // День недели первого числа месяца
        const firstDayOfMonth = new Date(year, month, 1).getDay();
        const adjustedFirstDay = (firstDayOfMonth === 0 ? 6 : firstDayOfMonth - 1);
    
        // День недели последнего числа месяца
        const lastDayOfMonth = new Date(year, month, daysInMonth).getDay();
        const adjustedLastDay = (lastDayOfMonth === 0 ? 6 : lastDayOfMonth - 1);
    
        // Очищаем календарь
        calendar.empty();
    
        // Добавляем ряд с днями недели
        const weekDays = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];
        const weekDaysRow = $('<div class="calendar-week-row"></div>');
        weekDays.forEach(day => {
            weekDaysRow.append(`<div class="calendar-week">${day}</div>`);
        });
        calendar.append(weekDaysRow);
    
        // Добавляем ячейки календаря
        const dates = [];
    
        // Пустые ячейки перед началом месяца
        for (let i = 0; i < adjustedFirstDay; i++) {
            dates.push('<div class="calendar-day empty"></div>');
        }
    
        // Ячейки текущего месяца
        for (let day = 1; day <= daysInMonth; day++) {
            dates.push(`<div class="calendar-day">${day}</div>`);
        }
    
        // Пустые ячейки после конца месяца
        for (let i = 0; i < (6 - adjustedLastDay); i++) {
            dates.push('<div class="calendar-day empty"></div>');
        }
    
        // Добавляем ячейки на страницу
        const calendarDatesRow = $('<div class="calendar-dates-row"></div>');
        calendarDatesRow.append(dates.join(''));
        calendar.append(calendarDatesRow);
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


