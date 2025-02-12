<?php
/*
Template Name: Шаблон: "Студийный фотограф"
*/
?>
<?php get_header();?>

<section class="page-subheader">
    <div class="page-subheader__text">
      <h1><?= get_field("photographer_hero_title"); ?></h1>
      <p><?= get_field("photographer_hero_subtitle"); ?></p>
    </div>
    <?php
        $image = get_field('photographer_hero_image'); 

        if ($image): ?>
            <img src="<?php echo esc_url($image['url']); ?>" 
                alt="<?php echo esc_attr($image['alt']); ?>" >
        <?php else: ?>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/placeholder.png" 
                alt="Placeholder" >
        <?php endif; ?>
  </section>


  <section class="photographer">
    <div class="container">
      <div class="row">
        <div class="col-6">
          <div class="photographer-image">
            
           <?php if ($image_array = get_field("photographer_image",7)
            ) { ?>
                <img 
                    src="<?= esc_url($image_array['url']); ?>" 
                    alt="<?= esc_attr($image_array['alt']); ?>"
                    loading="lazy"
                />
            <?php } ?>
          </div>
        </div>
        <div class="col-6">
          <div class="photographer-content">
            <h3> <?= get_field("photographer_subtitle",7); ?></h3>
            <p><?= get_field("photographer_description",7); ?></p>
            <button class="hero-button">Мои работы</button>
          </div>
        </div>
      </div>
    </div>
  </section>

<?php get_footer(); ?>
