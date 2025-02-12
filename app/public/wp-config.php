<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          '5j/-7SEMr]`BN;8sF$`Yi#1:$K3/:GRHJl5QL`F;3cwB$v)/PY;/,nF*0>]ZO%U0' );
define( 'SECURE_AUTH_KEY',   'JzKz_&TJq4%|tP>Jf)FeDn^eL:51FM%v6qdF$i%WJpMco!_CF_53`Z*Kx^?}p8Kj' );
define( 'LOGGED_IN_KEY',     'R!mu;82mU@|2HVx<~5PpjDiX?102GJoJ!<O&JyzJ&qf~rZ~{$Goo!k=TZ-%rVlq=' );
define( 'NONCE_KEY',         'IgK8>bT/octW-FE5_Wf#%+SuD;QURr>ph!BUOQ7SCk=$y1a?sA:|ES)dOi:*@)MJ' );
define( 'AUTH_SALT',         'JLX!o)Ni]%M{ 2Q/IP*;H@~#u1S<ybh8`|Ir,7btk(+EEzy5$]BkvAve/9)%k0pu' );
define( 'SECURE_AUTH_SALT',  'PSq&W7uga3#bXEtCh.#kO=y|`l,,@5`f ;L_?WZ*LNm`!99:Wd|/[=&^?r~0.S9}' );
define( 'LOGGED_IN_SALT',    'O)zc5n};fO9k7`dDF:k5L:M#zER9_IE:^8wPF#IX9)TT8,|q>g._h|M`pTXlyj!P' );
define( 'NONCE_SALT',        'q fCc!0Hmk-#.>0iH>z[K(u_DNmLE`7]O}F,(PmEAjR @*:4b~vLCd4Y&OKt(La`' );
define( 'WP_CACHE_KEY_SALT', 'euH$.h2!l9T-!VE]RGG=9Im8vhSWa<9}_xO>7=50?VyJ:H432P. CH20-T+~ac[9' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', false);
@ini_set('display_errors', 0);



define( 'WP_ALLOW_MULTISITE', true );
define( 'MULTISITE', true );
define( 'SUBDOMAIN_INSTALL', false );
$base = '/';
define( 'DOMAIN_CURRENT_SITE', 'photostudio.local' );
define( 'PATH_CURRENT_SITE', '/' );
define( 'SITE_ID_CURRENT_SITE', 1 );
define( 'BLOG_ID_CURRENT_SITE', 1 );

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
