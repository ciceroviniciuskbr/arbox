<?php
$custom_logo_id = get_theme_mod( 'custom_logo' );
$image = wp_get_attachment_image_src( $custom_logo_id , 'full' );
?>
<header class="container-fluid nav-wrapper" id="navbar">
    <div class="container">
        <div class="row">
            <div class="col-6 col-md-3 col-lg-2 col-logo">
                <a href="<?php echo get_site_url(); ?>" title="<?php echo esc_attr(get_bloginfo('description', 'display')); ?> | <?php echo esc_attr(get_bloginfo('name', 'display')); ?>">
                    <img src="<?php echo $image[0]; ?>" class="img-fluid" alt="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>" title="<?php echo esc_attr(get_bloginfo('name', 'display')); ?>" />
                </a>
            </div>
            
            <div class="col-2 col-md-1 d-lg-none btn-menu">
                <button class="navbar-toggler btn collapsed" type="button" data-toggle="collapse" data-target="#menuLinks" aria-controls="menuLinks" aria-expanded="false"></button>
            </div>
            
            <nav class="col-12 col-md-9 col-lg-7 navbar navbar-expand-lg">
                <div class="collapse navbar-collapse" id="menuLinks">
                    <?php
                        wp_nav_menu( array(
                            'theme_location' => 'nav_menu', // Defined when registering the menu
                            'menu_id'        => 'primary-menu',
                            'container'      => false,
                            'depth'          => 2,
                            'menu_class'     => 'navbar-nav ml-auto',
                            'fallback_cb'    => 'WP_Bootstrap_Navwalker::fallback',
                            'walker'         => new WP_Bootstrap_Navwalker(),
                        ) );
                    ?>
                </div>
            </nav>
        </div>
    </div>
</header>