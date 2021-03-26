<?php
/*
Template Name: Envio Contato
*/
function wpdbAtivar(){
	global $wpdb;
}

$nome = $_POST['nome'];
$email = $_POST['email'];
$eu_sou = $_POST['eu_sou'];
$telefone = $_POST['telefone'];
$quantidade = $_POST['quantidade'];
$onde_encontrou = $_POST['onde_encontrou'];

$assunto = "Contato do site + [eu sou]";

$table = $wpdb->prefix.'contato';
$insert_array = array(
    'nm_contato' => $nome,
    'email_contato' => $email,
    'tel_contato' => $telefone,
    'papel_contato' => $eu_sou,
    'qt_caixas_contato' => $quantidade,
    'onde_encontrou_contato' => $onde_encontrou
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

    $template = file_get_contents(get_template_directory() .'/templates/email-contato.php');
    $template_user = file_get_contents(get_template_directory() .'/templates/email-contato-user.php');
    
    foreach($variaveis as $key => $value){
        $template = str_replace('{{ '.$key.' }}', $value, $template);
    }

    // $headers = 'From: '. $email . "\r\n" .'Reply-To: ' . $email . "\r\n";
    // $headers = 'From: '. 'financeiro@arboxcaixas.com.br' . "\r\n" .'Reply-To: ' . $email . "\r\n";
    // $headers .= "MIME-Version: 1.0\r\n";
    // $headers .= "Content-Type: text/html; charset=UTF-8\r\n";

    $headers[] = 'Content-Type: text/html; charset=UTF-8';
    // $headers[] = 'From: Ar Box <financeiro@arboxcaixas.com.br>';
    $headers[] = 'From: Cicero <cicero.vinicius@kbrtec.com.br>';
    $headers[] = 'Reply-To: '. $nome .' <'. $email . '>';

    $headers_user[] = 'Content-Type: text/html; charset=UTF-8';
    // $headers_user[] = 'From: Ar Box <financeiro@arboxcaixas.com.br>';
    $headers_user[] = 'From: Cicero <cicero.vinicius@kbrtec.com.br>';
    // $headers_user[] = 'Reply-To: Ar Box <financeiro@arboxcaixas.com.br>';
    $headers_user[] = 'Reply-To: Cicero <cicero.vinicius@kbrtec.com.br>';
    
    // wp_mail('contato@arboxcaixas.com.br', $assunto, $template, $headers);
    // wp_mail('financeiro@arboxcaixas.com.br', $assunto, $template, $headers);
    wp_mail('cicero.vinicius@kbrtec.com.br', $assunto, $template, $headers);
    wp_mail($email, 'Sua mensagem de contato foi enviada para a Ar Box', $template_user, $headers_user);

    wp_redirect( get_site_url() .'/obrigado-formulario');
    exit();
}
wp_redirect( get_site_url() .'/obrigado-formulario' );