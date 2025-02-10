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
        <div class="works-container">
            <?php if( have_rows('carousel_block_repeater') ): ?>
                <?php while( have_rows('carousel_block_repeater') ): the_row(); ?>
                    <div class="work-carousel__block">
                        <h2 class="work-carousel__type"><?php the_sub_field('carousel__type_name'); ?></h2>

                        <div class="work-carousel__container">
                            <?php 
                                $gallery = get_sub_field('carousel_item_image'); 
                                if( $gallery ): ?>
                                    <?php foreach( $gallery as $image ): ?>
                                        <div class="work-carousel__item">
                                            <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>">
                                        </div>
                                    <?php endforeach; ?>
                            <?php endif; ?>
                        </div>
                    </div>
                <?php endwhile; ?>
            <?php endif; ?>
        </div>
    </div>
</section>


<?php get_footer(); ?>
