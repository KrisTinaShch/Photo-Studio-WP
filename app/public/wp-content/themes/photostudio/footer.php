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
            <li><a href="#home">Залы</a></li>
            <li><a href="#about">Оборудование</a></li>
            <li><a href="#services">Услуги</a></li>
            <li><a href="#photographer">Фотограф</a></li>
            <li><a href="#works">Работы</a></li>
            <li><a href="#contact">Контакты</a></li>
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


  <script src="<?php echo get_template_directory_uri();?>/assets/scripts/main.js"></script>

  <?php wp_footer(); ?>
</body>

</html>


</body>
</html>
