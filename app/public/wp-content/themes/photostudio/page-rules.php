<?php
/*
Template Name: Шаблон: "Правила студии"
*/
?>
<?php get_header();?>

<section class="page-subheader">
    <div class="page-subheader__text">
      <h1><?= get_field("rules_hero_title"); ?></h1>
      <p><?= get_field("rules_hero_subtitle"); ?></p>
    </div>
    <?php
        $image = get_field('rules_hero_image'); 

        if ($image): ?>
            <img src="<?php echo esc_url($image['url']); ?>" 
                alt="<?php echo esc_attr($image['alt']); ?>" >
        <?php else: ?>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/placeholder.png" 
                alt="Placeholder" >
        <?php endif; ?>
  </section>

 <section class="faq">
    <div class="container">
        <div class="accordion">
        <?php if (have_rows('rules_page_repeater')): ?>
          <?php while (have_rows('rules_page_repeater')): the_row(); ?>
            <div class="accordion-item">
                <div class="accordion-header">
                    <span><?= get_sub_field("rules_repeater_title"); ?></span>
                    <span class="navigation-icon">+</span>
                </div>
                <div class="accordion-content"><?= get_sub_field("rules_repeater_subtitle"); ?></div>
            </div>
            <?php endwhile; ?>
          <?php endif; ?>
        </div>
      </div>
 </section>


<?php get_footer();?>