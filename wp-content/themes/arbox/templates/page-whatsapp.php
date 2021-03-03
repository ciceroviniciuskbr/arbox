<?php
/*
Template Name: Lead WhatsApp
*/
function wpdbAtivar(){
	global $wpdb;
}
if(isset($_POST['nm_whatsapp'])){
    $nome = $_POST['nm_whatsapp'];
}else{
    wp_redirect( get_site_url());
    die();
}
if(isset($_POST['tel_whatsapp'])){
    $telefone = $_POST['tel_whatsapp'];
}else{
    wp_redirect( get_site_url());
    die();
}
if(isset($_POST['email_whatsapp'])){
    $email = $_POST['email_whatsapp'];
}else{
    wp_redirect( get_site_url());
    die();
}
$msg = (isset($_POST['msg_whatsapp']))? $_POST['msg_whatsapp'] : '';

$insert_array = array(
    'nm_whatsapp'          => $nome,
    'email_whatsapp'       => $email,
    'telefone_whatsapp'    => $telefone,
    'msg_whatsapp'         => $msg,
);

$table = $wpdb->prefix.'whatsapp';
$insert_array = array(
    'nm_whatsapp'          => $nome,
    'email_whatsapp'       => $email,
    'telefone_whatsapp'    => $telefone,
    'msg_whatsapp'         => $msg,
);

$exists = $wpdb->get_var( "SELECT COUNT(*) FROM {$table} WHERE telefone_whatsapp = '{$telefone}'" );

// if ($exists) die();
// if ($exists) wp_redirect( get_site_url());
if ($exists) wp_redirect( get_site_url() .'/obrigado-whatsapp');

// if ($wpdb->insert($table, $insert_array)) die();
// if ($wpdb->insert($table, $insert_array)) wp_redirect( get_site_url());
if ($wpdb->insert($table, $insert_array)) wp_redirect( get_site_url() .'/obrigado-whatsapp');