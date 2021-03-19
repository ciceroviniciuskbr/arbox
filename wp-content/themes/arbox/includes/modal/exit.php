<div class="modal" tabindex="-1" role="dialog" id="exit-popup">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="btn close" data-dismiss="modal" aria-label="Close"></button>
                <div class="title-area">
                    <button type="button" class="btn close" data-dismiss="modal" aria-label="Close"></button>
                    <h4 class="title">Já Vai???</h4>
                    <p class="subtitle">Deixe seu telefone que nossa equipe entrará em contato:</p>
                </div>

                <form action="<?php echo get_site_url(); ?>/lead-exit" method="post" class="form" id="formSaida">
                    <div class="form-group form-placeholder-fixed name">
                        <input type="text" name="nm_saida" id="nm_saida" class="form-control" required="required" placeholder="Nome" />
                        <label class="placeholder" for="nm_saida"><i class="fas fa-user icon"></i></label>
                    </div>
                    <div class="form-group form-placeholder-fixed telephone">
                        <input type="tel" name="tel_saida" id="tel_saida" class="form-control telcelphone" required="required" placeholder="Telefone" />
                        <label class="placeholder" for="tel_saida"><i class="fas fa-phone-alt icon"></i></label>
                    </div>

                    <div class="btn-wrap">
                        <!-- <button type="submit" class="btn btn-green btn-enviar" id="btnEnviarWhatsApp" onclick="app.functions.goToWhatsApp(event)">Enviar</button> -->
                        <button type="submit" class="btn btn-green btn-enviar" id="btnEnviarWhatsApp">Enviar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- <div class="backdrop" id="blackdrop"></div> -->
</div>