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
      <h2><?= get_field("works_title"); ?></h2>
      <div class="row">
        <div class="col-12">
          <div class="works-gallery">
             <?php 
             $counter = 0;
             if (have_rows('works_photo')) : ?>
                <?php while (have_rows('works_photo')) : the_row(); ?>
                    <?php 
                        $image = get_sub_field('works_photo_item');
                        if ($image):
                            $counter++;
                            if ($counter <= 3 || !wp_is_mobile()) : ?>
                                <img src="<?php echo esc_url($image['url']); ?>" 
                                     alt="<?php echo esc_attr($image['alt']); ?>" 
                                     title="<?php echo esc_attr($image['title']); ?>" />
                            <?php endif; ?>
                    <?php endif; ?>
                <?php endwhile; ?>
            <?php endif; ?>
          </div>
        </div>
        <button class="hero-button">Мои работы</button>
      </div>
    </div>
  </section>

  <section class="rooms">
    <div class="container">
      <h2><?= get_field("rooms_title"); ?></h2>
      <div class="row room-item">
        <?php if( have_rows('room_repeater') ): ?>
            <?php while( have_rows('room_repeater') ): the_row(); ?>
                <div class="col-4">
                    <div class="room-item__content">
                        <div class="room-item__image">
                            <?php 
                            $image = get_sub_field('room_repeater_image'); 
                            if( $image ): ?>
                                <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>">
                            <?php endif; ?>
                        </div>
                        <div class="room-item__description">
                            <h3><?php the_sub_field('room_repeater_title'); ?></h3>
                            <?php if( have_rows('room_repeater_description') ): ?>
                                <?php while( have_rows('room_repeater_description') ): the_row(); ?>
                                    <p><?php the_sub_field('room_repeater_description_item');  ?></p>
                                <?php endwhile; ?>
                            <?php endif; ?>
                        </div>
                        <div class="room-item__button">
                            <button class="hero-button">Забронировать</button>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
        <?php endif; ?>
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