document.addEventListener('scroll', () => {
  const header = document.getElementById('main-header');
  if (window.scrollY > 50) {
    header.classList.add('scrolled');
  } else {
    header.classList.remove('scrolled');
  }
});

const burgerIcon = document.getElementById('burger-icon');
const navMenu = document.getElementById('nav-menu');

burgerIcon.addEventListener('click', () => {
  burgerIcon.classList.toggle('active');
  navMenu.classList.toggle('open');
});

document.addEventListener("DOMContentLoaded", () => {
  const items = document.querySelectorAll(".accordion-item");

  items.forEach(item => {
      const header = item.querySelector(".accordion-header");
      const content = item.querySelector(".accordion-content");
      const icon = header.querySelector(".navigation-icon");

      header.addEventListener("click", function () {
          const isOpen = item.classList.contains("active");

          // Закрытие всех элементов перед открытием нового
          items.forEach(el => {
              el.classList.remove("active");
              el.querySelector(".accordion-content").style.maxHeight = null;
              el.querySelector(".accordion-content").style.padding = "0 15px";
          });

          if (!isOpen) {
              item.classList.add("active");
              content.style.maxHeight = content.scrollHeight + "px";
              content.style.padding = "15px";
          }
      });
  });
});


jQuery(document).ready(function ($) {
  $('.test-carousel').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    infinite: true,
    arrows: true,
  });
  $('.work-carousel__container').slick({
    centerMode: true,
    centerPadding: '0px',
    slidesToShow: 3,
    responsive: [
      {
        breakpoint: 768,
        settings: {
          centerMode: true,
          centerPadding: '0px',
          slidesToShow: 3
        }
      },
      {
        breakpoint: 480,
        settings: {
          centerMode: true,
          centerPadding: '0px',
          slidesToShow: 1
        }
      }
    ]
  });
});
