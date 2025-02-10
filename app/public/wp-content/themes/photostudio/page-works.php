<?php
/*
Template Name: Шаблон: "Работы"
*/
?>
<?php get_header();?>

<section class="page-subheader">
    <div class="page-subheader__text">
      <h1><?= get_field("works_hero_title"); ?></h1>
      <p><?= get_field("works_hero_subtitle"); ?></p>
    </div>
    <?php
        $image = get_field('works_hero_image'); 

        if ($image): ?>
            <img src="<?php echo esc_url($image['url']); ?>" 
                alt="<?php echo esc_attr($image['alt']); ?>" >
        <?php else: ?>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/placeholder.png" 
                alt="Placeholder" >
        <?php endif; ?>
  </section>


 <section>
    <div class="container">
        <div class="halls-container">
        <?php if( have_rows('halls_repeater') ): ?>
            <?php while( have_rows('halls_repeater') ): the_row(); ?>
            <div class="test-carousels">
                <div class="test-carousel">
                <?php if( have_rows('hall_image_repeater') ): ?>
                    <?php while( have_rows('hall_image_repeater') ): the_row(); ?>
                    <div>
                        <?php 
                            $image = get_sub_field('hall_image__item'); 
                            if( $image ): ?>
                                <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>">
                        <?php endif; ?>
                    </div>
                        <?php endwhile; ?>
                    <?php endif; ?>
                
                </div>
                <h2 class="item-card__title"><?= get_sub_field("hall_item_title"); ?></h2>
                <p class="item-card__subtitle"><?= get_sub_field("hall_item_description"); ?></p>
            </div>
            <?php endwhile; ?>
            <?php endif; ?>
        </div>
    </div>
 </section>

<?php get_footer();?>