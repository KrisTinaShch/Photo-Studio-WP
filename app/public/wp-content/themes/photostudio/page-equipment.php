<?php
/*
Template Name: Шаблон: "Оборудование"
*/
?>
<?php get_header();?>

<section class="hero-equipment">
    <div class="hero-equipment__text">
      <h1><?= get_field("equipment_hero_title"); ?></h1>
      <p><?= get_field("equipment_hero_subtitle"); ?></p>
    </div>
    <?php
        $image = get_field('equipment_hero_image'); 

        if ($image): ?>
            <img src="<?php echo esc_url($image['url']); ?>" 
                alt="<?php echo esc_attr($image['alt']); ?>" >
        <?php else: ?>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/placeholder.png" 
                alt="Placeholder" >
        <?php endif; ?>
  </section>

  <?php if (have_rows('equipment_repeater')): ?>
<section class="equipment">
    <div class="container">
            <?php while (have_rows('equipment_repeater')): the_row(); ?>
                <?php 
                    $image = get_sub_field('equipment-item__image'); 
                    $title = get_sub_field('equipment-item__title'); 
                    $price = get_sub_field('equipment-item__price'); 
                ?>
                    <div class="equipment-item">
                        <div class="equipment-item__image">
                            <?php if ($image): ?>
                                <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" class="equipment-item__img">
                            <?php else: ?>
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/img/placeholder.png" alt="Placeholder" class="equipment-item__img">
                            <?php endif; ?>
                        </div>
                        <h2 class="equipment-item__title"><?php echo esc_html($title); ?></h2>
                        <p class="equipment-item__price"><?php echo esc_html($price); ?></p>
                    </div>
            <?php endwhile; ?>
    </div>
</section>
<?php endif; ?>


<?php get_footer();?>