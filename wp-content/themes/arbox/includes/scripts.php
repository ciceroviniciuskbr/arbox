<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" integrity="sha512-bnIvzh6FU75ZKxp0GXLH9bewza/OIw6dLVh9ICg0gogclmYGguQJWl8U30WpbsGTqbIiAwxTsbe76DErLq5EDQ==" crossorigin="anonymous"></script>
<script>jQuery.event.special.touchstart = { setup: function( _, ns, handle ){ this.addEventListener("touchstart", handle, { passive:true }); } };</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js" integrity="sha256-NXRS8qVcmZ3dOv3LziwznUHPegFhPZ1F/4inU7uC8h0=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js" integrity="sha512-UdIMMlVx0HEynClOIFSyOrPggomfhBKJE28LKl8yR3ghkgugPnG6iLfRfHwushZl1MOPSY6TsuBDGPK2X4zYKg==" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.16/jquery.mask.min.js" integrity="sha512-pHVGpX7F/27yZ0ISY+VVjyULApbDlD0/X0rgGbTqCE7WFW5MezNTWG/dnhtbBuICzsd0WQPgpE4REBLv+UqChw==" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lity/2.4.1/lity.min.js" integrity="sha512-UU0D/t+4/SgJpOeBYkY+lG16MaNF8aqmermRIz8dlmQhOlBnw6iQrnt4Ijty513WB3w+q4JO75IX03lDj6qQNA==" crossorigin="anonymous"></script>
<script type="text/javascript" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/dist/js/scripts.min.js?v=<?php echo rand(1,999); ?>"></script>
<?php
$current_url = get_current_url_page();
if (strpos($current_url, 'obrigado-ebook') !== false) { ?>
<script>
$(document).ready(function () {
	var url = window.location.href;
	var urls = url.split('?');
	if (urls[1] == "ebook=1") {
		window.location.href = "<?php echo get_site_url(); ?>/baixar-ebook";
	}
});
</script>
<?php } ?>