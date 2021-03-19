    <footer <?php if(!is_front_page()){ echo 'class="obrigado"'; } ?> id="rodape">
        <div class="container">
        <?php if(is_front_page()){ ?>
            <div class="row form-area">
                <div class="col-md-6 col-title-img">
                    <h3 class="title" title="Adquirir agora mesmo Caixa de Alumínio para Ar condicionado | Ar Box">Adquirir agora mesmo Caixa de Alumínio para Ar condicionado</h3>
                    <img class="img-fluid" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/dist/images/produto/caixa-aluminio-branco-ar-condicionado-ar-box-1.png" alt="Caixa para ar condicionado Ar Box" />
                    <a class="btn link-whatsapp" id="whatsapp-btn" data-toggle="modal" data-target="#fale-whatsapp">
                        <p><i class="fab fa-whatsapp icon"></i>Tire suas dúvidas por whatsapp</p>
                    </a>
                </div>
                <div class="col-md-6 col-form">
                    <form action="<?php echo get_site_url(); ?>/envio-contato" method="POST" class="form">
                        <div class="form-group col-12 form-placeholder-fixed">
                            <input type="text" name="nome" id="nome" class="form-control" required="required" />
                            <label class="placeholder" for="nome">Nome:</label>
                        </div>

                        <div class="form-group col-12 form-placeholder-fixed">
                            <input type="email" name="email" id="email" class="form-control" required="required" />
                            <label class="placeholder" for="email">Email:</label>
                        </div>

                        <div class="form-group col-12 form-placeholder-fixed form-select eu-sou">
                            <select id="eu_sou" name="eu_sou" class="form-control" required="required">
                                <option value="" selected="selected"></option>
                                <option value="Síndico ou Zelador">Síndico ou Zelador</option>
                                <option value="Administradora de Condomínios">Administradora de Condomínios</option>
                                <option value="Construtora, Arquiteto ou Engenheiro">Construtora, Arquiteto ou Engenheiro</option>
                                <option value="Outros">Outros</option>
                            </select>
                            <label class="placeholder" for="eu_sou">Eu sou?</label>
                        </div>

                        <div class="form-group col-12 form-placeholder-fixed form-select qtde-caixas">
                            <select id="quantidade" name="quantidade" class="form-control">
                                <option value="" selected="selected"></option>
                                <option value="0 - 10">0 - 10</option>
                                <option value="11 - 50">11 - 50</option>
                                <option value="51 - 100">51 - 100</option>
                                <option value="Acima de 101">Acima de 101</option>
                            </select>
                            <label class="placeholder" for="quantidade">Quantidade de caixas:</label>
                        </div>

                        <div class="form-group col-12 form-placeholder-fixed form-select onde-estamos">
                            <select id="onde_encontrou" name="onde_encontrou" class="form-control">
                                <option value="" selected="selected"></option>
                                <option value="Google">Google</option>
                                <option value="Redes Sociais">Redes Sociais</option>
                                <option value="Indicação">Indicação</option>
                                <option value="Prédio/Condomínio">Prédio/Condomínio</option>
                                <option value="Sindiconet">Sindiconet</option>
                            </select>
                            <label class="placeholder" for="onde_encontrou">Onde nos encontrou?</label>
                        </div>

                        <button type="submit" class="btn btn-green">Orçamento Caixa de Alumínio</button>
                    </form>
                </div>
            </div>
        <?php } ?>

            <div class="row sitemap">
                <div class="col-md-3 site-area acesso-rapido">
                    <h6 class="title" title="Ar Box">Acesso rápido</h6>
                    <?php
                        wp_nav_menu(array(
                            'theme_location' => 'nav_menu',
                            'menu_class'     => 'links',
                            'container'      => false,
                            'depth'          => 2
                        ));
                    ?>
                </div>

                <div class="col-md-5 inpi">
                    <h6 class="title" title="Ar Box patenteada | Instituto Nacional da Propriedade Industrial">INPI</h6>
                    <p class="description">
                        Produto protegido conforme a Lei 9.610/98 dos Direitos Autorais. É vedada qualquer reprodução, total ou parcial, sem expressa autorização. A violação implicará na responsabilização cível e criminal nos termos da Lei.
                    </p>
                    <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/dist/images/inpi.png" alt="INPI" />
                </div>

                <div class="col-md-3 contato-whatsapp">
                    <h6 class="title" title="Entre em contato conosco por WhatsApp">WhatsApp</h6>
                    <p class="description">Entre em contato conosco agora mesmo!</p>
                    
                    <ul class="contatos-list">
                        <li class="contato telephone">
                            <a href="tel:+551321383630" class="link telephone" target="_blank" title="Fale conosco por telefone">
                                <i class="btn fas fa-phone icon"></i>
                                <p>(13) 2138-3630</p>
                            </a>
                        </li>
                        
                        <li class="contato whatsapp">
                            <a href="#fale-whatsapp" data-toggle="modal" data-target="#fale-whatsapp" class="link telephone whatsapp-link" target="_blank" title="Fale com a gente por WhatsApp">
                                <i class="btn fab fa-whatsapp icon"></i>
                                <p>(13) 99745-2734</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row-fluid credits">
            <div class="container">
                <div class="col-md-6 copyright">
                    <p><a href="<?php echo get_current_url_page(); ?>" title="Ar Box - Caixas de Ar condicionado">Ar Box - Caixas de Ar condicionado</a> &copy; Todos os direitos reservados.</p>
                </div>
                
                <div class="col-md-6 developed-by">
                    <p>
                        <a href="http://kbrtec.com.br" target="_blank" title="Clique para acessar o sie da KBR TEC">
                        Desenvolvido por <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/dist/images/logo-kbrtec-w.png" alt="KBR TEC Web & Software" />
                        </a>
                    </p>
                </div>
            </div>
        </div>

        <button id="toUp"></button>
        <a href="#topo" id="toUp" class="anchor"></a>
    </footer>
<?php wp_footer(); ?>
<?php get_template_part('includes/scripts'); ?>
</body>
</html>