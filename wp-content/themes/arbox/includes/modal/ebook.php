<div class="modal" tabindex="-1" role="dialog" id="ebook-popup">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="btn close" data-dismiss="modal" aria-label="Close"></button>
                <div class="title-area">
                    <button type="button" class="btn close" data-dismiss="modal" aria-label="Close"></button>
                    <h4 class="title">Conheça o nosso E-book</h4>
                    <p class="subtitle">Preencha o formulário abaixo para baixar gratuitamente o nosso e-book:</p>
                </div>
                
                <form action="<?php echo get_site_url(); ?>/envio-ebook" method="post" class="form" id="formEbook">
                <!-- <form action="<?php echo get_site_url(); ?>/baixar-ebook" method="post" class="form" id="formEbook"> -->
                    <div class="form-group form-placeholder-fixed name">
                        <input type="text" name="nm_ebook" id="nm_ebook" class="form-control" required="required" placeholder="Nome" />
                        <label class="placeholder" for="nm_ebook"><i class="fas fa-user icon"></i></label>
                    </div>
                    
                    <div class="form-group form-placeholder-fixed email">
                        <input type="email" name="email_ebook" id="email_ebook" class="form-control" required="required" placeholder="Email" />
                        <label class="placeholder" for="email_ebook"><i class="fas fa-envelope icon"></i></label>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-6 form-placeholder-fixed eu-sou">
                            <input type="tel" name="tel_ebook" id="tel_ebook" class="form-control telcelphone" required="required" placeholder="Telefone" />
                            <label class="placeholder" for="tel_ebook"><i class="fas fa-phone-alt icon"></i></label>
                        </div>
                        
                        <div class="form-group col-md-6 form-placeholder-fixed form-select eu-sou">
                            <select id="eu_sou_ebook" name="eu_sou_ebook" class="form-control" required="required">
                                <option value="" selected="selected" disabled="disabled">Eu sou?</option>
                                <option value="Síndico ou Zelador">Síndico ou Zelador</option>
                                <option value="Administradora de Condomínios">Administradora de Condomínios</option>
                                <option value="Construtora, Arquiteto ou Engenheiro">Construtora, Arquiteto ou Engenheiro</option>
                                <option value="Outros">Outros</option>
                            </select>
                            <label class="placeholder" for="eu_sou_ebook"><i class="fas fa-address-card icon"></i></label>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-group col-md-6 form-placeholder-fixed form-select qtde-caixas">
                            <select id="quantidade_ebook" name="quantidade_ebook" class="form-control" required="required">
                                <option value="" selected="selected" disabled="disabled">Quantidade de caixas</option>
                                <option value="0 - 10">0 - 10</option>
                                <option value="11 - 50">11 - 50</option>
                                <option value="51 - 100">51 - 100</option>
                                <option value="Acima de 101">Acima de 101</option>
                            </select>
                            <label class="placeholder" for="quantidade_ebook"><i class="fas fa-box icon"></i></label>
                        </div>
                        
                        <div class="form-group col-md-6 form-placeholder-fixed form-select onde-encontrou">
                            <select id="onde_encontrou_ebook" name="onde_encontrou_ebook" class="form-control" required="required">
                                <option value="" selected="selected" disabled="disabled">Onde nos encontrou?</option>
                                <option value="Google">Google</option>
                                <option value="Redes Sociais">Redes Sociais</option>
                                <option value="Indicação">Indicação</option>
                                <option value="Prédio/Condomínio">Prédio/Condomínio</option>
                                <option value="Sindiconet">Sindiconet</option>
                            </select>
                            <label class="placeholder" for="onde_encontrou_ebook"><i class="fas fa-search icon"></i></label>
                        </div>
                    </div>
                    
                    <div class="btn-wrap">
                        <button type="submit" class="btn btn-green btn-enviar" id="btnEnviarEbook">Enviar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- <div class="backdrop" id="blackdrop"></div> -->
</div>