<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'arbox' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'arbox_user' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', '@9ocTRyZpgOnOVemS' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'mv8K^9GW8Jk5C(a?:ALqOiVa8QvBu^PR$bOXHv/s`/FX[m:+yhNOy{L&I5Z.d|w,' );
define( 'SECURE_AUTH_KEY',  ' kr{l]u(~R]V^-aYui=|zZ)*eUbYl S`$qzxEz70`6XiL:a84=qB>M~^Y%?yl.P0' );
define( 'LOGGED_IN_KEY',    ',VF(_++I(U8Df@n8U47x]:[&^]bNGyMU;J`VUOtK8+8tR9~;x3wixPJ#H(lBfhV^' );
define( 'NONCE_KEY',        'oiWAx.q]:Sn7fl%14^WM|9BrfOokJ<3!dNNnhx_m2^eC1uJ/< vxk-S~NOA!JAaO' );
define( 'AUTH_SALT',        'rgu%vO9aMu@Dr0M#@=&dyt|XCUC_<//)O[t$j1xjsYW&TW!:^-l# d{0VYSD?nKp' );
define( 'SECURE_AUTH_SALT', 'LU#%y+wXHy(/[.MXS`E@i^q:;#%@CE-vGXvy9IM7[J/hemC1Q]]^A,tr/sf~2ENz' );
define( 'LOGGED_IN_SALT',   '6>GtUqG2{P6xZy{o*l2Ep,!{a35KjpL?Qev ].bHo=:Q^;IESlA|%~M7LDCLv~i>' );
define( 'NONCE_SALT',       'fXF<b7G%N)`&6X4 dYXYZm@o`iDvYM#E~O9fZI`7 tHeeyi[DOh-XfANQnBILjR1' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
