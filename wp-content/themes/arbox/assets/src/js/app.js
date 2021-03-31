// window.$ = window.jQuery = require("jquery");
// require("bootstrap");
import "bootstrap/js/dist/button";
import "bootstrap/js/dist/carousel";
import "bootstrap/js/dist/collapse";
import "bootstrap/js/dist/modal";
import "bootstrap/js/dist/util";

const app =  {
    breakpoints: {
        mobile: '(max-width: 767px)',
        tablet: '(min-width: 768px) and (max-width: 991px)',
        desktop: '(min-width: 992px)'
    },
    
    plugins: {
        mask: function() {
            var SPMaskBehavior = function(val) {
                return val.replace(/\D/g, "").length === 11
                ? "(00) 00000-0000"
                : "(00) 0000-00009";
            };
            
            var spOptions = {
                onKeyPress: function(val, e, field, options) {
                    field.mask(SPMaskBehavior.apply({}, arguments), options);
                }
            };
            
            $('[data-mask="date"]').mask("00/00/0000");
            $('[data-mask="telephone"]').mask("(00) 0000-0000");
            $('[data-mask="celphone"]').mask(SPMaskBehavior, spOptions);
            // $('[data-mask="telcelphone"]').mask(SPMaskBehavior, spOptions);
            $('.telcelphone').mask(SPMaskBehavior, spOptions);
        },
        
        slick: {
            avaliacoes: function(){
                $('.clientes .depoimentos ul').slick({
                    // infinite: true,
                    infinite: false,
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    dots: true,
                    arrows: false,
                    centerMode: false,
                    responsive: [{
                        breakpoint: 400,
                        settings: {
                            slidesToShow: 1,
                        }
                    },
                    {
                        breakpoint: 767,
                        settings: {
                            slidesToShow: 2,
                        }
                    },
                    {
                        breakpoint: 991,
                        settings: {
                            slidesToShow: 2,
                        }
                    }]
                });
            },
            
            antesDepois: function(){
                $('.antes-e-depois ul').slick({
                    prevArrow: $('.antes-e-depois .btn.btn-prev'),
                    nextArrow: $('.antes-e-depois .btn.btn-next'),
                    // infinite: true,
                    infinite: false,
                    slidesToShow: 2,
                    slidesToScroll: 1,
                    dots: false,
                    arrows: true,
                    centerMode: false,
                    responsive: [{
                        breakpoint: 400,
                        settings: {
                            slidesToShow: 1,
                        }
                    },
                    {
                        breakpoint: 767,
                        settings: {
                            slidesToShow: 2,
                        }
                    },
                    {
                        breakpoint: 991,
                        settings: {
                            slidesToShow: 2,
                        }
                    }]
                });
            },
        },
    },
    
    functions: {
        checkDevice: function(device){
            device = app.breakpoints[device];
            return (window.matchMedia(device).matches)? true : false;
        },
        
        smoothAncora: function() {
            $(".anchor").on('click', function(event) {
                event.preventDefault();
                
                if($(event.target).hasClass('nav-link')){
                    var url = event.target.href;
                    url = url.slice(url.lastIndexOf('#') + 1);
                    
                    $('html, body').animate({
                        scrollTop: ($("#" + url).offset().top)
                    }, 800, function() {
                        window.location.hash = url;
                    });
                    
                }else{
                    if (this.hash !== "") {
                        var hash = this.hash;
                        
                        $('html, body').animate({
                            scrollTop: ($(hash).offset().top)
                        }, 800, function() {
                            window.location.hash = hash;
                        });
                    }
                }
            });
        },

        popupExit: function(){
            var formValidation = $(".hustle-ui.hustle-popup form").validate({
                rules: {
                    nm_saida: "required",
                    tel_saida: "required",
                },
                errorPlacement: function(error, element) {
                    error.insertBefore(element);
                }
            }),
            inputs = $(".hustle-ui.hustle-popup form").find('input.form-control, textarea.form-control'),
            btnEnviar = $(".hustle-ui.hustle-popup form").find('#btnEnviarWhatsApp'),
            valid = true,
            count = 0;
            
            jQuery.extend(jQuery.validator.messages, {
                required: "Este campo é obrigatório."
            });
            
            btnEnviar.on('click', function(e){
                e.preventDefault();
                
                inputs.each(function() {
                    if(!formValidation.element($(this))){
                        count++;
                    }
                });
                
                if(count == 0){
                    valid = true;
                }else{
                    valid = false;
                }
                
                count = 0;
                
                if(valid){
                    $(".hustle-ui.hustle-popup form").submit();
                }
            });
        },

        popuEbook: function(){
            var formValidation = $("#ebook-popup form").validate({
                errorPlacement: function(error, element) {
                    error.insertBefore(element);
                }
            }),
            inputs = $("#ebook-popup form").find('input.form-control, select.form-control, textarea.form-control'),
            btnEnviar = $("#ebook-popup form").find('#btnEnviarEbook'),
            valid = true,
            count = 0;
            
            jQuery.extend(jQuery.validator.messages, {
                required: "Este campo é obrigatório."
            });
            
            btnEnviar.on('click', function(e){
                e.preventDefault();
                
                inputs.each(function() {
                    if(!formValidation.element($(this))){
                        count++;
                    }
                });
                
                if(count == 0){
                    valid = true;
                }else{
                    valid = false;
                }
                
                count = 0;
                
                if(valid){
                    $("#ebook-popup form").submit();
                }
            });
        },
        
        goToWhatsApp: function(){
            var formValidation = $("#formWhatsApp").validate({
                errorPlacement: function(error, element) {
                    error.insertBefore(element);
                }
            }),
            inputs = $("#formWhatsApp").find('input.form-control, textarea.form-control'),
            btnEnviar = $("#formWhatsApp").find('#btnEnviarWhatsApp'),
            valid = true,
            count = 0;
            
            jQuery.extend(jQuery.validator.messages, {
                required: "Este campo é obrigatório.",
                email: "Entre com um e-mail válido."
            });
            
            btnEnviar.on('click', function(e){
                e.preventDefault();
                
                inputs.each(function() {
                    if(!formValidation.element($(this))){
                        count++;
                    }
                });
                
                if(count == 0){
                    valid = true;
                }else{
                    valid = false;
                }
                
                count = 0;
                
                if(valid){
                    var phone = '5513997452734';
                    if(!$("#formWhatsApp").find('textarea').val()){
                        var msg = 'Olá, gostaria de saber mais sobre sobre a caixa para ar condicionado da Ar Box';
                    }else{
                        var msg = $("#formWhatsApp").find('textarea').val();
                    }
                    
                    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                        window.open('https://api.whatsapp.com/send?phone='+phone+'&text='+msg+'', '_blank');
                    }else{
                        window.open('https://web.whatsapp.com/send?phone='+phone+'&text='+msg+'', '_blank');
                    }
                    $("#formWhatsApp").submit();
                }
            });
        },
        
        modalPopupExit: function(){
            // var showlead = false;
            $(document).ready(function () {
                setTimeout(function () {
                    // $(document).mouseleave(function () {
                    // $(document).on('mouseleave', function (e) {
                    $('html').on('mouseleave', function (e) {
                        // if ('input' !== e.target.nodeName) {
                            // if (showlead != true)
                            if (window.sessionStorage.getItem('showlead') == null) {
                                // showlead = true;
                                $('body').addClass('modal-open');
                                $('#exit-popup').addClass('show');
                            }
                        // }
                    })
                }, 5000);
            });
            
            $('#exit-popup, #exit-popup .close').on('click', function(e) {
                if($(e.target).hasClass('modal') || $(e.target).hasClass('close')){
                    // showlead = true;
                    window.sessionStorage.setItem('showlead', '1');
                    $('body').removeClass('modal-open');
                    $('#exit-popup').removeClass('show');
                }
            });
        }
    },
    
    init: function(){
        if(app.functions.checkDevice('mobile') || app.functions.checkDevice('tablet')){
            $('#topo #video').remove();
        }

        if (window.location.href.indexOf("/obrigado") >= -1) {
            $('#menuLinks .btn-orcamento').removeClass('anchor');
        }
        
        $(document).ready(function(){
            if($('#topo #video').length){
                
                if(!app.functions.checkDevice('mobile') && !app.functions.checkDevice('tablet')){
                    var videoSrc = $('#topo #video source').attr('data-src');
                    $('#topo #video').attr('src', videoSrc);
                }
            }
            
            app.functions.smoothAncora();

            $('#menuLinks .open-ebook').on('click', function(){
                $('#ebook-popup').addClass('show');
            });

            $('#ebook-popup .close').on('click', function(){
                $('#ebook-popup').removeClass('show');
            });
            
            // if($('.video-imitacao .video-area .link').length){
            //     $('.video-imitacao .video-area .link').simpleLightbox();
            // }
        });
        
        app.functions.goToWhatsApp();
        app.functions.popupExit();
        app.functions.popuEbook();
        app.plugins.slick.avaliacoes();
        app.plugins.slick.antesDepois();
        app.plugins.mask();

        /*
        if (window.sessionStorage.getItem('showlead') == null) {
            app.functions.modalPopupExit();
        }
        */
    }
}

window.app = app;
app.init();