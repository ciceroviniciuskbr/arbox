<?php
/*
 * Get current URL page
 */
function get_current_url_page($www = FALSE)
{
	global $wp;
	$current_url = home_url(add_query_arg(array(), $wp->request));

	if($www){
		$current_www_url = parse_url($current_url);
		$newHost = substr($current_www_url["host"],0,4) !== "www."?"www.".$current_www_url["host"]:$current_www_url["host"];

		$url2 = $current_www_url["scheme"]."://".$newHost.(isset($current_www_url["port"])?":".$current_www_url["port"]:"").$current_www_url["path"].(!empty($current_www_url["query"])?"?".$current_www_url["query"]:"");

		return $url2;
	}else{
		return $current_url;
	}
}
