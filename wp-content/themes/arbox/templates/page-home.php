<?php
/*
Template name: Home
*/
get_template_part('includes/header');
$topo = get_field('topo'); ?>
<main class="main-wrapper">
    <div class="container-fluid destaque-area" id="topo" style="background-image: url(<?php echo $topo['imagem']; ?>)">
        <div class="container">
            <div class="col-md-7 title-area">
                <h1 class="title" title=""><?php echo $topo['titulo']; ?></h1>
                <h2 class="subtitle" title=""><?php echo $topo['subtitulo']; ?></h2>

                <a href="<?php echo $topo['botao']['link_url']; ?>" class="btn btn-green"><?php echo $topo['botao']['texto_do_botao']; ?></a>
            </div>
            
            <div class="col-md-4 tipos-area">
                <ul>
                <?php $produtos = $topo['produtos']['produto']; ?>
                <?php if($produtos): ?>
                    <?php foreach ($produtos as $produto) { ?>
                        <li>
                            <div class="icon"></div>
                            <div class="text">
                                <h3 class="tipo"><?php echo $produto['tipo_nome']; ?></h3>
                                <p class="info"><?php echo $produto['subtitulo']; ?></p>
                            </div>
                        </li>
                    <?php } ?>
                <?php endif; ?>
                </ul>
            </div>
        </div>

        <a href="#como-comprar" id="toBottom" class="anchor"></a>

        <div class="video-area">
            <video id="video" class="mutable" autoplay muted loop>
                <source data-src="<?php echo get_stylesheet_directory_uri(); ?>/assets/dist/video/arbox-video.mp4" type='video/mp4' />
            
            </video>
        </div>
    </div>

    <div class="container-fluid como-comprar" id="como-comprar">
        <div class="container">
            <div class="col-md-5 title-area">
                <h3 class="title">Entenda por que a <b>AR Box</b> irá valorizar o seu condomínio</h3>
            </div>
            <div class="col-md-7 text-area">
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p>
                <a href="https://www.arboxcaixas.com.br/como_comprar" class="btn btn-green">Como comprar</a>
            </div>
        </div>
    </div>
    <?php get_template_part('templates/includes/antes-depois'); ?>

    <?php get_template_part('templates/includes/comparativo'); ?>

    <?php get_template_part('templates/includes/detalhes-produto'); ?>

    <?php get_template_part('templates/includes/video-imitacao'); ?>

    <?php get_template_part('templates/includes/about'); ?>

    <?php get_template_part('templates/includes/clientes'); ?>
</main>
<?php get_template_part( 'includes/whatsapp-btn'); ?>
<?php get_template_part( 'includes/modal/whatsapp'); ?>
<?php get_template_part( 'includes/modal/exit'); ?>

<?php $form_footer = FALSE; ?>
<?php get_template_part( 'includes/footer'); ?>