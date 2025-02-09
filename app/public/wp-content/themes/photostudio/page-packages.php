<?php
/*
Template Name: Шаблон: "Пакеты"
*/
?>
<?php get_header();?>

<section class="page-subheader">
    <div class="page-subheader__text">
      <h1><?= get_field("packages_hero_title"); ?></h1>
      <p><?= get_field("packages_hero_subtitle"); ?></p>
    </div>
    <?php
        $image = get_field('packages_hero_image'); 

        if ($image): ?>
            <img src="<?php echo esc_url($image['url']); ?>" 
                alt="<?php echo esc_attr($image['alt']); ?>" >
        <?php else: ?>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/placeholder.png" 
                alt="Placeholder" >
        <?php endif; ?>
  </section>

  <?php if (have_rows('packages_repeater')): ?>

    <section class="rooms">
    <div class="container">
      <div class="row room-item">
        <?php if( have_rows('packages_repeater') ): ?>
            <?php while( have_rows('packages_repeater') ): the_row(); ?>
                <div class="col-4">
                    <div class="room-item__content">
                    <div class="room-item__description">
                            <h3><?php the_sub_field('package_name'); ?></h3>
                            <?php if( have_rows('package_description_repeater') ): ?>
                                <?php while( have_rows('package_description_repeater') ): the_row(); ?>
                                    <p><?php the_sub_field('package_description_item_repeater');  ?></p>
                                <?php endwhile; ?>
                            <?php endif; ?>
                        </div>
                        <div class="room-item__button">
                            <button class="hero-button">Забронировать</button>
                        </div>
                        <div class="room-item__image">
                            <?php 
                            $image = get_sub_field('package_image'); 
                            if( $image ): ?>
                                <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>">
                            <?php endif; ?>
                        </div>
                        
                    </div>
                </div>
            <?php endwhile; ?>
        <?php endif; ?>
    </div>
    </div>
  </section>
<?php endif; ?>


<?php get_footer();?>