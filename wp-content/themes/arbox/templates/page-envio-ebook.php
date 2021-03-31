<?php
/*
Template Name: Envio E-book
*/
function wpdbAtivar(){
	global $wpdb;
}

// $link = get_field("ebook", 32);
$link = get_site_url() .'/baixar-ebook';
$nome = (isset($_POST['nome_ebook']))? $_POST['nome_ebook'] : '';
$email = (isset($_POST['email_ebook']))? $_POST['email_ebook'] : '';
$eu_sou = (isset($_POST['eu_sou_ebook']))? $_POST['eu_sou_ebook'] : '';
$telefone = (isset($_POST['telefone_ebook']))? $_POST['telefone_ebook'] : '';
$quantidade = (isset($_POST['quantidade_ebook']))? $_POST['quantidade_ebook'] : '';
$onde_encontrou = (isset($_POST['onde_encontrou_ebook']))? $_POST['onde_encontrou_ebook'] : '';

$assunto = "[Download Ebook] - ". $nome;

$table = $wpdb->prefix.'ebook';
$insert_array = array(
    'nm_ebook' => $nome,
    'email_ebook' => $email,
    'tel_ebook' => $telefone,
    'papel_ebook' => $eu_sou,
    'qt_caixas_ebook' => $quantidade,
    'onde_encontrou_ebook' => $onde_encontrou
);
if($wpdb->insert($table, $insert_array)){
    date_default_timezone_set('America/Sao_Paulo');
    $variaveis = array(
        'name' => $nome,
        'email' => $email,
        'telefone' => $telefone,
        'day' => date('d/m/Y'),
        'hour' => date('H:i:s'),
        'papel' => $eu_sou,
        'quantidade' => $quantidade,
        'onde_encontrou' => $onde_encontrou
    );

    $template = file_get_contents(get_template_directory() .'/templates/email-ebook.php');
    $template_user = file_get_contents(get_template_directory() .'/templates/email-ebook-user.php');
    
    foreach($variaveis as $key => $value){
        $template = str_replace('{{ '.$key.' }}', $value, $template);
    }

    $template_user = str_replace('{{ link }}', $link, $template_user);

    // $headers = 'From: '. $email . "\r\n" .'Reply-To: ' . $email . "\r\n";
    // $headers = 'From: '. 'financeiro@arboxcaixas.com.br' . "\r\n" .'Reply-To: ' . $email . "\r\n";
    // $headers .= "MIME-Version: 1.0\r\n";
    // $headers .= "Content-Type: text/html; charset=UTF-8\r\n";

    $headers[] = 'Content-Type: text/html; charset=UTF-8';
    $headers[] = 'From: AR Box Caixas <financeiro@arboxcaixas.com.br>';
    $headers[] = 'Reply-To: '. $nome .' <'. $email . '>';

    $headers_user[] = 'Content-Type: text/html; charset=UTF-8';
    $headers_user[] = 'From: AR Box Caixas <financeiro@arboxcaixas.com.br>';
    $headers_user[] = 'Reply-To: AR Box Caixas <financeiro@arboxcaixas.com.br>';
    
    wp_mail('financeiro@arboxcaixas.com.br', $assunto, $template, $headers);
    wp_mail($email, 'Você baixou o E-book da AR Box Caixas', $template_user, $headers_user);

    wp_redirect( get_site_url() .'/obrigado-ebook?ebook=1');
    // echo "<script>window.open('".  get_site_url() .'/baixar-ebook' ."', '_blank');</script>";
    // echo "<script>var newTab = window.open('".  get_site_url() .'/baixar-ebook' ."', '_blank'); newTab.location;</script>";
    // echo '<script>setTimeout(function() { window.location.href = "'.get_site_url() .'/obrigado-ebook"; }, 1000);</script>';
    exit();
}
wp_redirect( get_site_url() .'/obrigado-ebook?ebook=1' );
// echo "<script>var newTab = window.open('".  get_site_url() .'/baixar-ebook' ."', '_blank'); newTab.location;</script>";
// echo '<script>setTimeout(function() { window.location.href = "'.get_site_url() .'/obrigado-ebook"; }, 1000);</script>';