<?php
// Include all functions files -------------------------------------
include_once('config/config.php');

function arbox_theme_setup(){
    add_action('wp_default_scripts', 'remove_jquery_migrate');

	add_theme_support('custom-logo', array(
		'height'      => 100,
		'width'       => 250,
		'flex-height' => true,
		'flex-width'  => true,
		'header-text' => array('site-title', 'site-description'),
	));

	// Enable thumbnails for the posts
	add_theme_support('post-thumbnails');

	// Register Custom Navigation Walker
	require_once get_template_directory() . '/config/class-wp-bootstrap-navwalker.php';
}
add_action('after_setup_theme', 'arbox_theme_setup');

// DISABLE GUTENBERG EDITOR ----------------------------------------------
add_filter('use_block_editor_for_post', '__return_false', 10);

// disable for post types
add_filter('use_block_editor_for_post_type', '__return_false', 10);

//Remove JQuery migrate ---------------------------------------------------
function remove_jquery_migrate($scripts)
{
	if (!is_admin() && isset($scripts->registered['jquery'])) {
		$script = $scripts->registered['jquery'];
		
		if ($script->deps) { // Check whether the script has any dependencies
			$script->deps = array_diff($script->deps, array(
				'jquery-migrate'
			));
		}
	}
}

/**
 * Disable standard editor and Gutenberg for the homepage
 * keeping the status (enabled/disabled) for others who uses the same filter (i.e. ACF)
 */
add_filter( 'use_block_editor_for_post', 'yourtheme_hide_editor', 10, 2 );
function yourtheme_hide_editor( $use_block_editor, $post_type ) {
    if ( (int) get_option( 'page_on_front' ) == get_the_ID() ) { // on frontpage
        remove_post_type_support( 'page', 'editor' ); // disable standard editor
        return false; // and disable gutenberg
    }

    return $use_block_editor; // keep gutenberg status for other pages/posts 
}

// Register Navigation Menus
register_nav_menus( array(
    'nav_menu' => 'Nav Menu',
) );

// Menu Leads Whatsapp
add_action('admin_menu', 'whatsapp_menu');
include("config/listagem_whatsapp.php");
function whatsapp_menu() {
    add_menu_page(
        'Leads Whatsapp',
		'Leads Whatsapp',
		'administrator',
		'whatsapp_menu',
		'listar_lead_whatsapp',
		'dashicons-media-spreadsheet',
		27
	);
}

// Menu Leads Popup Exit
add_action('admin_menu', 'lead_menu');
include("config/listagem_lead.php");
function lead_menu() {
    add_menu_page(
        'Leads Popup Exit',
		'Leads Popup Exit',
		'administrator',
		'lead_menu',
		'listar_lead_saida',
		'dashicons-media-spreadsheet',
		28
	);
}

// Menu Orcamentos
add_action('admin_menu', 'contato_menu');
include("config/listagem_contato.php");
function contato_menu() {
	add_menu_page(
		'Contatos',
		'Contatos',
		'administrator',
		'contato_menu',
		'listar_contato',
		'dashicons-media-spreadsheet',
		26
	);
}

// Menu Leads Ebook
add_action('admin_menu', 'ebook_menu');
include("config/listagem_ebook.php");
function ebook_menu() {
	add_menu_page(
		'Leads E-book',
		'Leads E-book',
		'administrator',
		'ebook_menu',
		'listar_lead_ebook',
		'dashicons-book-alt',
		29
	);
}