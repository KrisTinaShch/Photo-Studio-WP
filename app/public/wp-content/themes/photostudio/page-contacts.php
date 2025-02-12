<?php
/*
Template Name: Шаблон: "Контакты"
*/
?>
<?php get_header();?>

<section class="page-subheader">
    <div class="page-subheader__text">
      <h1><?= get_field("contacts_hero_title"); ?></h1>
      <p><?= get_field("contacts_hero_subtitle"); ?></p>
    </div>
    <?php
        $image = get_field('contacts_hero_image'); 

        if ($image): ?>
            <img src="<?php echo esc_url($image['url']); ?>" 
                alt="<?php echo esc_attr($image['alt']); ?>" >
        <?php else: ?>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/img/placeholder.png" 
                alt="Placeholder" >
        <?php endif; ?>
  </section>


  <section class="contacts"> 
    <div class="container">
        <div class="row">
            <div class="col-6">
                <div class="contacts_leftside">
                    <div class="contacts_adress">
                        <h3><?php the_field('studio_name','options');?></h3>
                        <p><?php the_field('site_address','options');?></p>
                    </div>
                    <div class="contacts_number">
                        <h3>Номер</h3>
                        <p><?php the_field('site_phone_number','options');?></p>
                    </div>
                    <div class="contacts_number">
                        <h3>Email</h3>
                        <p><a href="<?php the_field('site_email','options');?>"> <?php the_field('site_email','options');?></a></p>
                    </div>
                    <div class="contacts_number">
                        <h3>Рабочее время</h3>
                        <p><?php the_field('work_time','options');?></p>
                    </div>
                    <div>
                    <h3>Где нас найти?</h3>
                        <div class="social_links">
                            <a href="<?php the_field('site_instagram_link','options');?>"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/social/social.png" alt="instagram icon"></a>
                            <a href="<?php the_field('site_facebook_link','options');?>"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/social/facebook.png" alt="facebook icon"></a>
                            <a href="<?php the_field('site_youtube_link','options');?>"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/social/youtube.png" alt="facebook icon"></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6">
                    <div class="contacts_rightside">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1027.856220653598!2d27.84961410222729!3d43.225922055973506!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40a4535877b9754d%3A0x63579a497f5ac28d!2z0JfQsNC_0LDQtNCS0LvQsNC00LjRgdC70LDQsiDQktCw0YDQvdC10L3Rh9C40LosINGD0LsuIOKAntCd0LXQv9GC0YPQveKAnCA4LCA5MDA5INCS0LDRgNC90LA!5e0!3m2!1sru!2sbg!4v1739297266605!5m2!1sru!2sbg" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    </div>
            </div>
        </div>
    </div>
</section>


<?php get_footer(); ?>
