<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package photostudio
 */

?>

<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
  	<meta charset="<?php bloginfo( 'charset' ); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/assets/css/reset.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/assets/css/grid.css">
  <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/assets/css/style.css">
  <script src="https://js.stripe.com/v3/" defer></script>

  <?php wp_head(); ?>
</head>


<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

  <header id="main-header" class="header">
    <div class="header-container">
      <a href="#" class="logo"><img src="<?php echo get_template_directory_uri();?>/assets/img/logo.webp" alt="logo"></a>
      <div class="burger" id="burger-icon">
        <span></span>
        <span></span>
        <span></span>
      </div>
      <nav id="nav-menu" class="nav-menu">
        <ul class="header-links">
          <li><a href="#home">Залы</a></li>
          <li><a href="#about">Оборудование</a></li>
          <li><a href="#services">Услуги</a></li>
          <li><a href="#photographer">Фотограф</a></li>
          <li><a href="#works">Работы</a></li>
          <li><a href="#contact">Контакты</a></li>
        </ul>
        <ul class="header-social">
          <li><a href="#social" class="social-links"><img src="<?php echo get_template_directory_uri();?>/assets/img/social/social.png" alt="instagram"
                class="social-link"></a></li>
          <li><a href="#facebook" class="social-links"><img src="<?php echo get_template_directory_uri();?>/assets/img/social/facebook.png" alt="facebook"
                class="social-link"> </a>
          </li>
          <li><a href="#youtube" class="social-links"><img src="<?php echo get_template_directory_uri();?>/assets/img/social/youtube.png" alt="youtube"
                class="social-link"></a></li>
        </ul>
      </nav>
    </div>
  </header>

