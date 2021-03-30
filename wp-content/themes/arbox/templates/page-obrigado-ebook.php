<?php
/*
Template name: Obrigado E-book
*/
get_template_part('includes/header');
$topo = get_field('topo'); ?>
<main class="main-wrapper">
    <div class="container-fluid destaque-area obrigado" id="topo">
        <div class="container">
            <div class="col-md-7 title-area">
                <h1 class="title" title="">E-book Ar Box Caixas</h1>
                <?php /* <p class="subtitle" title="">Obrigado por baixar o nosso e-book, caso queira baixar/visualizar novamente <a href="<?php the_field("ebook", 32); ?>" target="_blank">clique aqui</a>.</p> */ ?>
                <p class="subtitle" title="">Obrigado por baixar o nosso e-book, caso queira baixar/visualizar novamente <a href="<?php echo get_site_url(); ?>/baixar-ebook" target="_blank">clique aqui</a>.</p>
                <a href="<?php echo get_site_url(); ?>" class="btn btn-green">Voltar</a>
            </div>
        </div>
    </div>
</main>
<?php // get_template_part( 'includes/whatsapp-btn'); ?>
<?php // get_template_part( 'includes/modal/whatsapp'); ?>
<?php get_template_part( 'includes/footer'); ?>