<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package photostudio
 */

?>

  <footer class="footer">
    <div class="container">
      <div class="footer-content">
        <div class="footer-logo">
          <a href="/../" class="logo"><img src="<?php the_field('site_logo','options');?>" alt="logo"></a>
        </div>
        <div class="footer-links">
          <ul>
          <?php if(get_field('site_menu_repeater','options')) :?>
            <?php while(has_sub_field('site_menu_repeater','options')): ?>
              <li><a href="<?php the_sub_field('menu_link_link','options')?>"><?php the_sub_field('menu_link_name','options')?></a></li>
            <?php endwhile;?>
          <?php endif; ?>
          </ul>
        </div>
        <div class="footer-socials">
          <ul>
            <li><a href="<?php the_field('site_instagram_link','options');?>" class="social-links"><img src="<?php echo get_template_directory_uri();?>/assets/img/social/social.png" alt="instagram"
                  class="social-link"></a></li>
            <li><a href="<?php the_field('site_facebook_link','options');?>" class="social-links"><img src="<?php echo get_template_directory_uri();?>/assets/img/social/facebook.png" alt="facebook"
                  class="social-link"> </a>
            </li>
            <li><a href="<?php the_field('site_youtube_link','options');?>" class="social-links"><img src="<?php echo get_template_directory_uri();?>/assets/img/social/youtube.png" alt="youtube"
                  class="social-link"></a></li>
          </ul>
        </div>
      </div>
      <div class="footer-bottom">
        <p><?php the_field('site_descriptor','options');?></p>
      </div>
    </div>
  </footer>

  <?php wp_footer(); ?>
</body>

</html>


</body>
</html>
