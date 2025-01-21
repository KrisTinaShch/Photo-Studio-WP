jQuery(document).ready(function ($) {
    const calendar = $('#booking-calendar');
    const controls = $('<div id="calendar-controls"><button id="prev-month">← </button><span id="current-month-year"></span><button id="next-month"> →</button></div>');

    calendar.before(controls);

    const daysOfWeek = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];
    const months = [
        'Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь',
        'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'
    ];

    let currentDate = new Date();
    let selectedDate = null;
    let selectedTime = null;

    function renderDaysOfWeek() {
        const weekRow = $('<div class="calendar-week-row"></div>');
        daysOfWeek.forEach((day) => {
            weekRow.append(`<div class="calendar-week">${day}</div>`);
        });
        calendar.before(weekRow);
    }

    function renderCalendar(date) {
        const year = date.getFullYear();
        const month = date.getMonth();
        const firstDayOfMonth = new Date(year, month, 1).getDay();
        const daysInMonth = new Date(year, month + 1, 0).getDate();

        const offset = (firstDayOfMonth + 6) % 7;

        $('#current-month-year').text(`${months[month]} ${year}`);
        calendar.empty();

        $.post(bookingAjax.ajax_url, {
            action: 'get_unavailable_dates',
            nonce: bookingAjax.nonce,
            year: year,
            month: month + 1,
        }, function (response) {
            if (response.success) {
                const unavailableDates = response.data.unavailable_dates;

                for (let i = 0; i < offset; i++) {
                    calendar.append('<div class="calendar-day empty"></div>');
                }

                for (let day = 1; day <= daysInMonth; day++) {
                    const dateString = `${year}-${String(month + 1).padStart(2, '0')}-${String(day).padStart(2, '0')}`;
                    const loopDate = new Date(year, month, day);
                    const currentDate = new Date();

                    const isUnavailable = unavailableDates.includes(dateString) || loopDate < currentDate;

                    const dayClass = isUnavailable ? 'calendar-day unavailable' : 'calendar-day';
                    calendar.append(`<div class="${dayClass}" data-day="${day}" data-month="${month + 1}" data-year="${year}" data-date="${dateString}">${day}</div>`);
                }

                enableDayClick();
            } else {
                console.error('Ошибка получения недоступных дат:', response.data);
            }
        }).fail(function () {
            console.error('Ошибка загрузки недоступных дат.');
        });
    }

    function enableDayClick() {
        $('.calendar-day.unavailable').off('click').on('click', function () {
            alert('Этот день недоступен для бронирования.');
        });

        $('.calendar-day:not(.unavailable)').off('click').on('click', function () {
            selectedDate = $(this).data('date');
            $('#available-times').html('<p>Загрузка доступных часов...</p>');
            $('#booking-modal').fadeIn();

            $.post(bookingAjax.ajax_url, {
                action: 'get_available_times',
                nonce: bookingAjax.nonce,
                year: $(this).data('year'),
                month: $(this).data('month'),
                day: $(this).data('day'),
            }, function (response) {
                if (response.success) {
                    const times = response.data.times;
                    if (times.length === 0) {
                        $('#available-times').html('<p>Все слоты на этот день заняты.</p>');
                    } else {
                        let timesHtml = '';
                        times.forEach((time) => {
                            timesHtml += `<button class="time-slot" data-time="${time}">${time}</button>`;
                        });
                        $('#available-times').html(timesHtml);
                        enableTimeSlotClick();
                    }
                } else {
                    $('#available-times').html('<p>Ошибка загрузки часов.</p>');
                }
            }).fail(function () {
                $('#available-times').html('<p>Ошибка сервера при загрузке часов.</p>');
            });
        });
    }

    function enableTimeSlotClick() {
        $('.time-slot').off('click').on('click', function () {
            selectedTime = $(this).data('time');
            $('#booking-modal').fadeOut();
            $('#user-info-modal').fadeIn();
        });
    }

    function enableCancelBooking() {
        $('.delete-booking').off('click').on('click', function () {
            const bookingId = $(this).data('id');
            if (!confirm('Вы уверены, что хотите отменить это бронирование?')) {
                return;
            }

            $.post(bookingAjax.ajax_url, {
                action: 'delete_booking',
                nonce: bookingAjax.nonce,
                booking_id: bookingId,
            }, function (response) {
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
    }

    $('#user-info-form').on('submit', function (e) {
        e.preventDefault();

        if (!selectedDate || !selectedTime) {
            alert('Пожалуйста, выберите дату и время.');
            return;
        }

        const userData = {
            action: 'book_time_slot',
            nonce: bookingAjax.nonce,
            day: new Date(selectedDate).getDate(),
            month: new Date(selectedDate).getMonth() + 1,
            year: new Date(selectedDate).getFullYear(),
            time: selectedTime,
            user_name: $('#user-name').val(),
            user_phone: $('#user-phone').val(),
            user_email: $('#user-email').val(),
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

    $('#prev-month').on('click', function () {
        currentDate.setMonth(currentDate.getMonth() - 1);
        renderCalendar(currentDate);
    });

    $('#next-month').on('click', function () {
        currentDate.setMonth(currentDate.getMonth() + 1);
        renderCalendar(currentDate);
    });

    // Инициализация
    renderDaysOfWeek();
    renderCalendar(currentDate);
    enableCancelBooking(); // Обработчик для кнопки "Отменить бронь"
});
