<?php
/* Template Name: Baixar E-book */
header("Content-type:application/pdf");

$link = get_field("ebook", 32);

// It will be called downloaded.pdf
// header("Content-Disposition:attachment;filename=cidadania-italiana.pdf");
header("Content-Disposition:attachment;filename=ebook-arbox.pdf");

// The PDF source is in original.pdf
// readfile("/home/storage/9/81/e1/w4doc/public_html/wp-content/themes/4doc-theme/pages/Ebook.pdf");
readfile($link);
exit();
?>
