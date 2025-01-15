<?php
/*
Template Name: Шаблон: "Главная страница"
*/
?>
<?php get_header();?>

  <section class="hero">
    <div class="hero-content">
      <h1><?= get_field("hero_main_title"); ?></h1>
      <p><?= get_field("hero_subtitle"); ?></p>
      <div class="hero-buttons">
        <button class="hero-button">Забронировать зал</button>
      </div>
    </div>
    <video class="hero-video" autoplay muted loop>
      <source src="<?php echo esc_url(get_field('hero_bg_video')['url']); ?>" type="video/mp4">
    </video>
  </section>

  <section class="works">
    <div class="container">
      <h2>Работы</h2>
      <div class="row">
        <div class="col-12">
          <div class="works-gallery gallery-mobile">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work1.png" alt="work1">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work2.png" alt="work2">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work3.png" alt="work3">
          </div>
          <div class="works-gallery">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work4.png" alt="work 1">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work5.png" alt="work 2">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work6.png" alt="work 3">
          </div>
          <div class="works-gallery">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work7.png" alt="work 4">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work8.png" alt="work 5">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work6.png" alt="work 3">
          </div>
          <div class="works-gallery">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work1.png" alt="work1">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work2.png" alt="work2">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work3.png" alt="work3">
          </div>
          <div class="works-gallery">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work4.png" alt="work 1">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work5.png" alt="work 2">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/works/work6.png" alt="work 3">
          </div>
        </div>
        <button class="hero-button">Мои работы</button>
      </div>
    </div>
  </section>

  <section class="rooms">
    <div class="container">
      <h2>Залы</h2>
      <div class="row room-item">
        <div class="col-4">
          <div class="room-item__content">
            <div class="room-item__image">
              <img src="<?php echo get_template_directory_uri();?>/assets/img/rooms/room1.jpg" alt="room 1">
            </div>
            <div class="room-item__description">
              <h3>Зал 1</h3>
              <p><b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и
                бетонный
                пол</p>
              <p><b>Циклорама:</b> есть 4х5.5 м (ГхШ), доп. оплата за использование в случае загрязнения</p>

              <p><b>Интерьер:</b> концептуальная мебель, геометрическая конструкция, хромированный угол с металлическим
                столиком, ростовое зеркало</p>
              <p><b>Оборудование:</b> в стоимость зала включены 2 импульсных источника света.</p>
            </div>
            <div class="room-item__button">
              <button class="hero-button">Забронировать</button>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="room-item__content">
            <div class="room-item__image">
              <img src="<?php echo get_template_directory_uri();?>/assets/img/rooms/room2.jpg" alt="room 2">
            </div>
            <div class="room-item__description">
              <h3>Зал 2</h3>
              <p><b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и
                бетонный
                пол</p>
              <p><b>Циклорама:</b> есть 4х5.5 м (ГхШ), доп. оплата за использование в случае загрязнения</p>

              <p><b>Интерьер:</b> концептуальная мебель, геометрическая конструкция, хромированный угол с металлическим
                столиком, ростовое зеркало</p>
              <p><b>Оборудование:</b> в стоимость зала включены 2 импульсных источника света.</p>
            </div>
            <div class="room-item__button">
              <button class="hero-button">Забронировать</button>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="room-item__content">
            <div class="room-item__image">
              <img src="<?php echo get_template_directory_uri();?>/assets/img/rooms/room3.jpg" alt="room 2">
            </div>
            <div class="room-item__description">
              <h3>Зал 3</h3>
              <p><b>Зал:</b> 120 кв. м, белый потолок, высота потолков 6м, панорамное остекление, белый потолок и
                бетонный
                пол</p>
              <p><b>Циклорама:</b> есть 4х5.5 м (ГхШ), доп. оплата за использование в случае загрязнения</p>

              <p><b>Интерьер:</b> концептуальная мебель, геометрическая конструкция, хромированный угол с металлическим
                столиком, ростовое зеркало</p>
              <p><b>Оборудование:</b> в стоимость зала включены 2 импульсных источника света.</p>
            </div>
            <div class="room-item__button">
              <button class="hero-button">Забронировать</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section style="text-align: center;">
    <h2>Доступные даты</h2>
    <p>....</p>
  </section>
  <section class="photographer">
    <h2>Фотограф</h2>
    <div class="container">
      <div class="row">
        <div class="col-6">
          <div class="photographer-image">
            <img src="<?php echo get_template_directory_uri();?>/assets/img/sergey.png" alt="">
          </div>
        </div>
        <div class="col-6">
          <div class="photographer-content">
            <h3> Я Сережа!</h3>
            <p>"Не снимаю фотографии, а создаю их."</p>
            <p>Фотография для меня больше, чем снимок - это искусство. Когда я нажимаю затвор, я будто пишу картину,
              но за одну секунду. Картину, наполненную эстетикой, гармонией и чувствами. Раскрыть вашу истинную красоту
              и характер - моя главная миссия в процессе съёмки.</p>
            <p> Мои клиенты - моё вдохновение!</p>
            <button class="hero-button">Мои работы</button>
          </div>
        </div>
      </div>
    </div>
  </section>


<?php get_footer();?>