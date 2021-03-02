// window.$ = window.jQuery = require("jquery");
// require("bootstrap");
import "bootstrap/js/dist/button";
import "bootstrap/js/dist/carousel";
import "bootstrap/js/dist/collapse";
import "bootstrap/js/dist/modal";
import "bootstrap/js/dist/util";

const app =  {
    plugins: {
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
        }
    },
    
    init: function(){
        $(document).ready(function(){
            app.functions.smoothAncora();
        });
        
        // $(document).on("click", '.whatsapp-button', function() {
        //     $("#whatsapp-modal").css("display","flex")
        // });
        app.functions.goToWhatsApp();
        app.plugins.slick.avaliacoes();
        app.plugins.slick.antesDepois();
    }
}

window.app = app;
app.init();