<?php
/*
Template name: Obrigado Formulario
*/
get_template_part('includes/header');
$topo = get_field('topo'); ?>
<main class="main-wrapper">
    <div class="container-fluid destaque-area obrigado" id="topo">
        <div class="container">
            <div class="col-md-7 title-area">
                <h1 class="title" title="">Obrigado!</h1>
                <p class="subtitle" title="">Assim que possível retornaremos o seu contato.</p>

                <a href="<?php echo get_site_url(); ?>" class="btn btn-green">Voltar</a>
            </div>
        </div>
    </div>
</main>
<?php // get_template_part( 'includes/whatsapp-btn'); ?>
<?php // get_template_part( 'includes/modal/whatsapp'); ?>
<?php get_template_part( 'includes/footer'); ?>