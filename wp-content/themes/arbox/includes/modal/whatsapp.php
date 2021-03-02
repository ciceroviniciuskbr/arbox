<div class="modal" tabindex="-1" role="dialog" id="fale-whatsapp">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="btn close" data-dismiss="modal" aria-label="Close"></button>
                <div class="title-area">
                    <button type="button" class="btn close" data-dismiss="modal" aria-label="Close"></button>
                    <i class="fab fa-whatsapp icon"></i>
                    <h4 class="title">Fale por WhatsApp</h4>
                    <p class="subtitle">
                        Preencha o formulário abaixo para podermos conversar pelo WhatsApp
                    </p>
                </div>

                <form action="../whatsapp-lead" method="post" class="form" id="formWhatsApp">
                    <div class="form-group form-placeholder-fixed name">
                        <input type="text" name="nm_whatsapp" id="nm_whatsapp" class="form-control" required="required" placeholder="Nome" />
                        <label class="placeholder" for="nm_whatsapp"><i class="fas fa-user icon"></i></label>
                    </div>
                    <div class="form-group form-placeholder-fixed telephone">
                        <input type="tel" name="tel_whatsapp" id="tel_whatsapp" class="form-control" data-mask="telcelphone" required="required" placeholder="Telefone" />
                        <label class="placeholder" for="tel_whatsapp"><i class="fas fa-phone-alt icon"></i></label>
                    </div>
                    <div class="form-group form-placeholder-fixed email">
                        <input type="email" name="email_whatsapp" id="email_whatsapp" class="form-control" required="required" placeholder="Email" />
                        <label class="placeholder" for="email_whatsapp"><i class="fas fa-envelope icon"></i></label>
                    </div>
                    <div class="form-group form-placeholder-fixed msg">
                        <textarea name="msg_whatsapp" id="msg_whatsapp" cols="30" rows="5" class="form-control" placeholder="Mensagem"></textarea>
                        <label class="placeholder" for="msg_whatsapp"><i class="fas fa-comment-dots icon"></i></label>
                    </div>

                    <div class="btn-wrap">
                        <!-- <button type="submit" class="btn btn-green btn-enviar" id="btnEnviarWhatsApp" onclick="app.functions.goToWhatsApp(event)">Enviar</button> -->
                        <button type="submit" class="btn btn-green btn-enviar" id="btnEnviarWhatsApp">Enviar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>