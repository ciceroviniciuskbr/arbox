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
$quantidade = $_POST['quantidade'];
$onde_encontrou = $_POST['onde_encontrou'];

$table = $wpdb->prefix.'contato';
$insert_array = array(
    'nm_contato' => $nome,
    'email_contato' => $email,
    'papel_contato' => $eu_sou,
    'qt_caixas_contato' => $quantidade,
    'onde_encontrou_contato' => $onde_encontrou
);
if($wpdb->insert($table, $insert_array)){
    date_default_timezone_set('America/Sao_Paulo');
    $variaveis = array(
        'name' => $nome,
        'day' => date('d/m/Y'),
        'hour' => date('H:i:s'),
        'fone' => $telefone,
        'papel' => $eu_sou,
        'quantidade' => $quantidade,
        'onde_encontrou' => $onde_encontrou
    );

    $template = file_get_contents(get_template_directory() .'/templates/email-contato.php');
    
    foreach($variaveis as $key => $value){
        $template = str_replace('{{ '.$key.' }}', $value, $template);
    }

    $headers = "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html; charset=UTF-8\r\n";
    wp_mail('contato@arboxcaixas.com.br', $assunto, $template, $headers);
    wp_mail($email, 'Sua mensagem de contato foi enviada para a Ar Box', $template, $headers);

    wp_redirect( get_site_url() .'/obrigado-formulario');
    exit();
}
wp_redirect( get_site_url() .'/obrigado-formulario' );