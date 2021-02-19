<?php
// Include all functions files -------------------------------------
include_once('config/config.php');

function arbox_theme_setup(){
    add_action('wp_default_scripts', 'remove_jquery_migrate');

	// Enable thumbnails for the posts
	add_theme_support('post-thumbnails');
}
add_action('after_setup_theme', 'arbox_theme_setup');