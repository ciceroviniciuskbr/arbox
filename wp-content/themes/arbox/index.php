<?php 
if (have_posts()):
	if(is_front_page()):
		get_template_part('templates/page-home');
	else:
		get_template_part( '404');
	endif;
else:
	get_template_part( '404');
endif;
?>