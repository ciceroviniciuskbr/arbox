<?php
/*
Template Name: Lead Popup Exit
*/
function wpdbAtivar(){
	global $wpdb;
}
if(isset($_POST['nm_saida'])){
    $nome = $_POST['nm_saida'];
}else{
    wp_redirect( get_site_url());
    die();
}
if(isset($_POST['tel_saida'])){
    $telefone = $_POST['tel_saida'];
}else{
    wp_redirect( get_site_url());
    die();
}

$table = $wpdb->prefix.'lead_exit';
$insert_array = array(
    'nm_lead'          => $nome,
    'telefone_lead'    => $telefone
);

$exists = $wpdb->get_var( "SELECT COUNT(*) FROM {$table} WHERE telefone_lead = '{$telefone}'" );

// if ($exists) die();
// if ($exists) wp_redirect( get_site_url());
if ($exists) wp_redirect( get_site_url() .'/obrigado-meligue');

// if ($wpdb->insert($table, $insert_array)) die();
// if ($wpdb->insert($table, $insert_array)) wp_redirect( get_site_url());
if ($wpdb->insert($table, $insert_array)) wp_redirect( get_site_url() .'/obrigado-meligue');