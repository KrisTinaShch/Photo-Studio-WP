jQuery(document).ready(function ($) {
    const calendar = $('#booking-calendar');
    const controls = $('<div id="calendar-controls"><button id="prev-month">←</button><span id="current-month-year"></span><button id="next-month">→</button></div>');

    calendar.before(controls);

    let currentDate = new Date();
    let selectedDate = null;
    let selectedTime = null;
    let selectedPackage = null;
    let duration = 1; // Длительность по умолчанию

    // Обновляем продолжительность при выборе пакета
    $('#package').on('change', function () {
        selectedPackage = $(this).val();
        duration = parseInt($(this).find(":selected").val(), 10) || 1;
        console.log("Выбрали пакет:", selectedPackage, "Длительность:", duration);
    });


    function renderCalendar(date) {
        const year = date.getFullYear();
        const month = date.getMonth();
        const daysInMonth = new Date(year, month + 1, 0).getDate();

        $('#current-month-year').text(`${year}-${String(month + 1).padStart(2, '0')}`);
        calendar.empty();

        $.post(bookingAjax.ajax_url, {
            action: 'get_unavailable_dates',
            nonce: bookingAjax.nonce,
            year: year,
            month: month + 1
        }, function (response) {
            if (response.success) {
                const unavailableDates = response.data.unavailable_dates;

                for (let day = 1; day <= daysInMonth; day++) {
                    const dateString = `${year}-${String(month + 1).padStart(2, '0')}-${String(day).padStart(2, '0')}`;
                    const loopDate = new Date(year, month, day);
                    const isUnavailable = unavailableDates.includes(dateString) || loopDate < new Date();

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
            console.log("Выбранная дата:", selectedDate);
            $('#available-times').html('<p>Загрузка доступных часов...</p>');
            $('#booking-modal').fadeIn();

            $.post(bookingAjax.ajax_url, {
                action: 'get_available_times',
                nonce: bookingAjax.nonce,
                year: $(this).data('year'),
                month: $(this).data('month'),
                day: $(this).data('day')
            }, function (response) {
                console.log("Ответ сервера:", response);

                if (response.success) {
                    const times = response.data.times;
                    let timesHtml = '';
                    times.forEach(time => {
                        timesHtml += `<button class="time-slot" data-time="${time}">${time}</button>`;
                    });
                    $('#available-times').html(timesHtml);
                    enableTimeSlotClick();
                } else {
                    $('#available-times').html('<p>Ошибка загрузки часов.</p>');
                }
            }).fail(function () {
                $('#available-times').html('<p>Ошибка сервера при загрузке часов.</p>');
            });
        });
    }

    // Обновленный обработчик выбора времени
    function enableTimeSlotClick() {
        $('.time-slot').off('click').on('click', function () {
            selectedTime = $(this).data('time');
            selectedPackage = $('#package').val();
            duration = parseInt($('#package option:selected').data('duration')) || 1;

            if (!selectedPackage) {
                alert('Выберите пакет перед бронированием.');
                return;
            }

            let startHour = parseInt(selectedTime.split(':')[0]);
            let timesToBlock = [];

            for (let i = 0; i < duration; i++) {
                let currentHour = startHour + i;
                let timeSlot = (currentHour < 10 ? '0' : '') + currentHour + ':00';
                if (!$(`.time-slot[data-time="${timeSlot}"]`).length) {
                    alert(`Время ${timeSlot} уже занято. Выберите другой слот.`);
                    return;
                }
                timesToBlock.push(timeSlot);
            }

            console.log("Выбранные слоты:", timesToBlock);

            $('#booking-modal').fadeOut();
            $('#user-info-modal').fadeIn();
        });
    }


    // Обновленный обработчик формы отправки данных
    $('#user-info-form').on('submit', function (e) {
        e.preventDefault();

        if (!selectedPackage) {
            alert('Пожалуйста, выберите пакет перед бронированием.');
            return;
        }

        let startHour = parseInt(selectedTime.split(':')[0]);
        let endHour = startHour + duration;
        let endTime = (endHour < 10 ? '0' : '') + endHour + ':00';
        let timeRange = selectedTime + " - " + endTime; // Передаем диапазон времени

        const userData = {
            action: 'book_time_slot',
            nonce: bookingAjax.nonce,
            year: new Date(selectedDate).getFullYear(),
            month: new Date(selectedDate).getMonth() + 1,
            day: new Date(selectedDate).getDate(),
            start_time: selectedTime,
            duration: parseInt($('#package').val(), 10) || 1,  // Гарантируем правильную передачу

            package: selectedPackage,
            cameras: $('#cameras').val() || 0,
            user_name: $('#user-name').val().trim(),
            user_phone: $('#user-phone').val().trim(),
            user_email: $('#user-email').val().trim()
        };

        console.log("Отправка запроса:", userData);

        $.post(bookingAjax.ajax_url, userData, function (response) {
            console.log("Ответ от сервера:", response);
            if (response.success) {
                alert('Бронь успешно создана!');
                $('#user-info-modal').fadeOut();
                location.reload();
            } else {
                alert('Ошибка: ' + response.data.message);
            }
        }).fail(function () {
            alert('Ошибка сервера. Попробуйте позже.');
        });
    });


    $(document).on('click', '.delete-booking', function () {
        const bookingId = $(this).data('id');

        if (!confirm('Вы уверены, что хотите отменить это бронирование?')) {
            return;
        }

        $.post(bookingAjax.ajax_url, {
            action: 'delete_booking',
            nonce: bookingAjax.nonce,
            booking_id: bookingId
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

    $('#prev-month').on('click', function () {
        currentDate.setMonth(currentDate.getMonth() - 1);
        renderCalendar(currentDate);
    });

    $('#next-month').on('click', function () {
        currentDate.setMonth(currentDate.getMonth() + 1);
        renderCalendar(currentDate);
    });

    renderCalendar(currentDate);
});
