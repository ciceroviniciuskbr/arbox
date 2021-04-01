-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Abr-2021 às 15:28
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `arbox`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-02-19 16:15:38', '2021-02-19 18:15:38', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_contato`
--

CREATE TABLE `wp_contato` (
  `cd_contato` int(11) NOT NULL,
  `nm_contato` varchar(100) NOT NULL,
  `email_contato` varchar(100) NOT NULL,
  `tel_contato` varchar(100) DEFAULT NULL,
  `papel_contato` varchar(100) NOT NULL,
  `qt_caixas_contato` varchar(100) NOT NULL,
  `onde_encontrou_contato` varchar(50) NOT NULL,
  `dt_contato` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ebook`
--

CREATE TABLE `wp_ebook` (
  `cd_ebook` int(11) NOT NULL,
  `nm_ebook` varchar(100) NOT NULL,
  `email_ebook` varchar(100) NOT NULL,
  `tel_ebook` varchar(100) DEFAULT NULL,
  `papel_ebook` varchar(100) NOT NULL,
  `qt_caixas_ebook` varchar(100) NOT NULL,
  `onde_encontrou_ebook` varchar(50) NOT NULL,
  `dt_ebook` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_hustle_entries`
--

CREATE TABLE `wp_hustle_entries` (
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `entry_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_hustle_entries_meta`
--

CREATE TABLE `wp_hustle_entries_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `entry_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_hustle_modules`
--

CREATE TABLE `wp_hustle_modules` (
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) DEFAULT 1,
  `module_mode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_hustle_modules`
--

INSERT INTO `wp_hustle_modules` (`module_id`, `blog_id`, `module_name`, `module_type`, `active`, `module_mode`) VALUES
(1, 0, 'Popup Exit', 'popup', 1, 'informational');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_hustle_modules_meta`
--

CREATE TABLE `wp_hustle_modules_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_hustle_modules_meta`
--

INSERT INTO `wp_hustle_modules_meta` (`meta_id`, `module_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'content', '{\"module_name\":\"\",\"title\":\"\",\"sub_title\":\"\",\"main_content\":\"<div class=\\\"title-area\\\">\\n<h4 class=\\\"title\\\">J\\u00e1 Vai???<\\/h4>\\n<p class=\\\"subtitle\\\">Deixe seu telefone que nossa equipe entrar\\u00e1 em contato:<\\/p>\\n\\n<\\/div>\\n<form id=\\\"formSaida\\\" class=\\\"form\\\" action=\\\"http:\\/\\/arbox.localhost\\/lead-exit\\\" method=\\\"post\\\">\\n<div class=\\\"form-group form-placeholder-fixed name\\\"><input id=\\\"nm_saida\\\" class=\\\"form-control\\\" name=\\\"nm_saida\\\" required=\\\"required\\\" type=\\\"text\\\" placeholder=\\\"Nome\\\" \\/><label class=\\\"placeholder\\\" for=\\\"nm_saida\\\"><i class=\\\"fas fa-user icon\\\"><\\/i><\\/label><\\/div>\\n<div class=\\\"form-group form-placeholder-fixed telephone\\\"><input id=\\\"tel_saida\\\" class=\\\"form-control telcelphone\\\" name=\\\"tel_saida\\\" required=\\\"required\\\" type=\\\"tel\\\" placeholder=\\\"Telefone\\\" \\/><label class=\\\"placeholder\\\" for=\\\"tel_saida\\\"><i class=\\\"fas fa-phone-alt icon\\\"><\\/i><\\/label><\\/div>\\n<div class=\\\"btn-wrap\\\"><button id=\\\"btnEnviarWhatsApp\\\" class=\\\"btn btn-green btn-enviar\\\" type=\\\"submit\\\">Enviar<\\/button><\\/div>\\n<\\/form>\",\"feature_image\":\"\",\"background_image\":\"\",\"show_never_see_link\":\"0\",\"never_see_link_text\":\"Never see this message again.\",\"show_cta\":\"0\",\"cta_label\":\"\",\"cta_url\":\"https:\\/\\/\",\"cta_target\":\"blank\",\"cta_two_label\":\"\",\"cta_two_url\":\"\",\"cta_two_target\":\"blank\",\"cta_helper_show\":\"0\",\"cta_helper_text\":\"\"}'),
(2, 1, 'emails', '{\"form_elements\":{\"first_name\":{\"required\":\"false\",\"label\":\"First Name\",\"name\":\"first_name\",\"type\":\"name\",\"placeholder\":\"John\",\"can_delete\":true},\"last_name\":{\"required\":\"false\",\"label\":\"Last Name\",\"name\":\"last_name\",\"type\":\"name\",\"placeholder\":\"Smith\",\"can_delete\":true},\"email\":{\"required\":\"true\",\"label\":\"Your email\",\"name\":\"email\",\"type\":\"email\",\"placeholder\":\"johnsmith@example.com\",\"validate\":\"true\",\"can_delete\":false},\"submit\":{\"required\":\"true\",\"label\":\"Submit\",\"error_message\":\"Something went wrong, please try again.\",\"name\":\"submit\",\"type\":\"submit\",\"placeholder\":\"Subscribe\",\"can_delete\":false}},\"after_successful_submission\":\"show_success\",\"success_message\":\"\",\"auto_close_success_message\":\"0\",\"auto_close_time\":5,\"auto_close_unit\":\"seconds\",\"redirect_url\":\"\",\"automated_email\":\"0\",\"email_time\":\"instant\",\"recipient\":\"{email}\",\"day\":\"\",\"time\":\"\",\"auto_email_time\":\"5\",\"schedule_auto_email_time\":\"5\",\"auto_email_unit\":\"seconds\",\"schedule_auto_email_unit\":\"seconds\",\"email_subject\":\"\",\"email_body\":\"\"}'),
(3, 1, 'integrations_settings', '{\"allow_subscribed_users\":\"1\",\"disallow_submission_message\":\"This email address is already subscribed.\",\"active_integrations\":\"local_list\",\"active_integrations_count\":\"1\"}');
INSERT INTO `wp_hustle_modules_meta` (`meta_id`, `module_id`, `meta_key`, `meta_value`) VALUES
(4, 1, 'design', '{\"enable_mobile_settings\":\"0\",\"form_layout\":\"one\",\"style\":\"minimal\",\"feature_image_position\":\"left\",\"feature_image_width\":\"320\",\"feature_image_width_unit\":\"px\",\"feature_image_height\":\"150\",\"feature_image_height_unit\":\"px\",\"feature_image_height_mobile\":\"150\",\"feature_image_height_unit_mobile\":\"px\",\"feature_image_fit\":\"contain\",\"feature_image_fit_mobile\":\"contain\",\"feature_image_horizontal_position\":\"center\",\"feature_image_horizontal_position_mobile\":\"center\",\"feature_image_horizontal_value\":\"-100\",\"feature_image_horizontal_value_mobile\":\"-100\",\"feature_image_horizontal_unit\":\"px\",\"feature_image_horizontal_unit_mobile\":\"px\",\"feature_image_vertical_position\":\"center\",\"feature_image_vertical_position_mobile\":\"center\",\"feature_image_vertical_value_mobile\":\"-100\",\"feature_image_vertical_value\":\"-100\",\"feature_image_vertical_unit\":\"px\",\"feature_image_vertical_unit_mobile\":\"px\",\"background_image_width\":\"\",\"background_image_width_mobile\":\"\",\"background_image_width_unit\":\"px\",\"background_image_width_unit_mobile\":\"px\",\"background_image_height\":\"\",\"background_image_height_mobile\":\"\",\"background_image_height_unit\":\"px\",\"background_image_height_unit_mobile\":\"px\",\"background_image_fit\":\"contain\",\"background_image_fit_mobile\":\"contain\",\"background_image_horizontal_position\":\"center\",\"background_image_horizontal_position_mobile\":\"center\",\"background_image_horizontal_value\":\"-100\",\"background_image_horizontal_value_mobile\":\"-100\",\"background_image_horizontal_unit\":\"px\",\"background_image_horizontal_unit_mobile\":\"px\",\"background_image_vertical_position\":\"center\",\"background_image_vertical_position_mobile\":\"center\",\"background_image_vertical_value\":\"-100\",\"background_image_vertical_value_mobile\":\"-100\",\"background_image_vertical_unit\":\"px\",\"background_image_vertical_unit_mobile\":\"px\",\"background_image_repeat\":\"repeat\",\"background_image_repeat_mobile\":\"repeat\",\"cta_buttons_alignment\":\"left\",\"cta_buttons_alignment_mobile\":\"full\",\"optin_form_layout\":\"inline\",\"optin_form_layout_mobile\":\"stacked\",\"form_fields_icon\":\"static\",\"customize_form_fields_proximity\":\"0\",\"customize_form_fields_proximity_mobile\":\"0\",\"form_fields_proximity_unit\":\"px\",\"form_fields_proximity_unit_mobile\":\"px\",\"form_fields_proximity_value\":\"1\",\"form_fields_proximity_value_mobile\":\"1\",\"customize_typography\":\"0\",\"customize_typography_mobile\":\"0\",\"global_font_family\":\"custom\",\"global_custom_font_family\":\"inherit\",\"customize_border_shadow_spacing\":\"0\",\"customize_border_shadow_spacing_mobile\":\"0\",\"use_vanilla\":\"0\",\"feature_image_hide_on_mobile\":\"0\",\"color_palette\":\"gray_slate\",\"customize_colors\":\"0\",\"customize_size\":\"0\",\"customize_size_mobile\":\"0\",\"custom_width\":600,\"custom_width_unit\":\"px\",\"custom_width_mobile\":600,\"custom_width_unit_mobile\":\"px\",\"custom_height\":300,\"custom_height_unit\":\"px\",\"custom_height_mobile\":300,\"custom_height_unit_mobile\":\"px\",\"customize_css\":\"0\",\"custom_css\":\"\",\"main_bg_color\":\"#38454E\",\"image_container_bg\":\"#35414A\",\"form_area_bg\":\"#5D7380\",\"title_color\":\"#FFFFFF\",\"title_color_alt\":\"#ADB5B7\",\"subtitle_color\":\"#FFFFFF\",\"subtitle_color_alt\":\"#ADB5B7\",\"content_color\":\"#ADB5B7\",\"ol_counter\":\"#ADB5B7\",\"ul_bullets\":\"#ADB5B7\",\"blockquote_border\":\"#38C5B5\",\"link_static_color\":\"#38C5B5\",\"link_hover_color\":\"#2DA194\",\"link_active_color\":\"#2DA194\",\"cta_button_static_bo\":\"#2CAE9F\",\"cta_button_static_bg\":\"#38C5B5\",\"cta_button_static_color\":\"#FFFFFF\",\"cta_button_hover_bo\":\"#39CDBD\",\"cta_button_hover_bg\":\"#2DA194\",\"cta_button_hover_color\":\"#FFFFFF\",\"cta_button_active_bo\":\"#39CDBD\",\"cta_button_active_bg\":\"#2DA194\",\"cta_button_active_color\":\"#FFFFFF\",\"optin_input_icon\":\"#AAAAAA\",\"optin_input_static_bo\":\"#B0BEC6\",\"optin_input_static_bg\":\"#FFFFFF\",\"optin_form_field_text_static_color\":\"#5D7380\",\"optin_placeholder_color\":\"#AAAAAA\",\"optin_input_icon_hover\":\"#5D7380\",\"optin_input_hover_bo\":\"#4F5F6B\",\"optin_input_hover_bg\":\"#FFFFFF\",\"optin_input_icon_focus\":\"#5D7380\",\"optin_input_active_bo\":\"#4F5F6B\",\"optin_input_active_bg\":\"#FFFFFF\",\"optin_input_icon_error\":\"#D43858\",\"optin_input_error_border\":\"#D43858\",\"optin_input_error_background\":\"#FFFFFF\",\"optin_check_radio_bo\":\"#B0BEC6\",\"optin_check_radio_bg\":\"#FFFFFF\",\"optin_mailchimp_labels_color\":\"#FFFFFF\",\"optin_check_radio_bo_checked\":\"#4F5F6B\",\"optin_check_radio_bg_checked\":\"#FFFFFF\",\"optin_check_radio_tick_color\":\"#38C5B5\",\"gdpr_chechbox_border_static\":\"#B0BEC6\",\"gdpr_chechbox_background_static\":\"#FFFFFF\",\"gdpr_content\":\"#FFFFFF\",\"gdpr_content_link\":\"#FFFFFF\",\"gdpr_chechbox_border_active\":\"#4F5F6B\",\"gdpr_checkbox_background_active\":\"#FFFFFF\",\"gdpr_checkbox_icon\":\"#38C5B5\",\"gdpr_checkbox_border_error\":\"#D43858\",\"gdpr_checkbox_background_error\":\"#FFFFFF\",\"optin_select_border\":\"#B0BEC6\",\"optin_select_icon\":\"#38C5B5\",\"optin_select_background\":\"#FFFFFF\",\"optin_select_placeholder\":\"#AAAAAA\",\"optin_select_label\":\"#5D7380\",\"optin_select_border_hover\":\"#4F5F6B\",\"optin_select_icon_hover\":\"#49E2D1\",\"optin_select_background_hover\":\"#FFFFFF\",\"optin_select_border_open\":\"#4F5F6B\",\"optin_select_icon_open\":\"#49E2D1\",\"optin_select_background_open\":\"#FFFFFF\",\"optin_select_border_error\":\"#D43858\",\"optin_select_icon_error\":\"#D43858\",\"optin_select_background_error\":\"#FFFFFF\",\"optin_dropdown_background\":\"#FFFFFF\",\"optin_dropdown_option_color\":\"#5D7380\",\"optin_dropdown_option_color_hover\":\"#FFFFFF\",\"optin_dropdown_option_bg_hover\":\"#ADB5B7\",\"optin_dropdown_option_color_active\":\"#FFFFFF\",\"optin_dropdown_option_bg_active\":\"#38C5B5\",\"optin_calendar_background\":\"#FFFFFF\",\"optin_calendar_title\":\"#35414A\",\"optin_calendar_arrows\":\"#5D7380\",\"optin_calendar_thead\":\"#35414A\",\"optin_calendar_cell_background\":\"#FFFFFF\",\"optin_calendar_cell_color\":\"#5D7380\",\"optin_calendar_arrows_hover\":\"#5D7380\",\"optin_calendar_cell_bg_hover\":\"#38C5B5\",\"optin_calendar_cell_color_hover\":\"#FFFFFF\",\"optin_calendar_arrows_active\":\"#5D7380\",\"optin_calendar_cell_bg_active\":\"#38C5B5\",\"optin_calendar_cell_color_active\":\"#FFFFFF\",\"optin_submit_button_static_bo\":\"#2CAE9F\",\"optin_submit_button_static_bg\":\"#38C5B5\",\"optin_submit_button_static_color\":\"#FFFFFF\",\"optin_submit_button_hover_bo\":\"#39CDBD\",\"optin_submit_button_hover_bg\":\"#49E2D1\",\"optin_submit_button_hover_color\":\"#FFFFFF\",\"optin_submit_button_active_bo\":\"#39CDBD\",\"optin_submit_button_active_bg\":\"#49E2D1\",\"optin_submit_button_active_color\":\"#FFFFFF\",\"optin_mailchimp_title_color\":\"#FFFFFF\",\"custom_section_bg\":\"#35414A\",\"optin_error_text_bg\":\"#FFFFFF\",\"optin_error_text_border\":\"#D43858\",\"optin_error_text_color\":\"#D43858\",\"optin_success_background\":\"#38454E\",\"optin_success_tick_color\":\"#38C5B5\",\"optin_success_content_color\":\"#ADB5B7\",\"overlay_bg\":\"rgba(51,51,51,0.9)\",\"close_button_static_color\":\"#38C5B5\",\"never_see_link_static\":\"#38C5B5\",\"recaptcha_copy_text\":\"#FFFFFF\",\"recaptcha_copy_link_default\":\"#FFFFFF\",\"close_button_hover_color\":\"#49E2D1\",\"never_see_link_hover\":\"#49E2D1\",\"recaptcha_copy_link_hover\":\"#FFFFFF\",\"close_button_active_color\":\"#49E2D1\",\"never_see_link_active\":\"#49E2D1\",\"recaptcha_copy_link_focus\":\"#FFFFFF\",\"module_cont_drop_shadow\":\"rgba(0,0,0,0)\",\"module_cont_border\":\"#DADADA\",\"layout_header_border\":\"rgba(0,0,0,0.16)\",\"layout_header_bg\":\"rgba(0,0,0,0)\",\"layout_header_drop_shadow\":\"rgba(0,0,0,0)\",\"layout_content_border\":\"rgba(0,0,0,0)\",\"layout_content_bg\":\"rgba(0,0,0,0)\",\"layout_footer_border\":\"rgba(0,0,0,0)\",\"layout_footer_bg\":\"rgba(0,0,0,0.16)\",\"layout_footer_drop_shadow\":\"rgba(0,0,0,0)\",\"form_cont_border\":\"rgba(0,0,0,0)\",\"form_cont_drop_shadow\":\"rgba(0,0,0,0)\",\"title_drop_shadow\":\"rgba(0,0,0,0)\",\"title_border\":\"rgba(0,0,0,0)\",\"title_bg\":\"rgba(0,0,0,0)\",\"subtitle_drop_shadow\":\"rgba(0,0,0,0)\",\"subtitle_border\":\"rgba(0,0,0,0)\",\"subtitle_bg\":\"rgba(0,0,0,0)\",\"content_wrap_border\":\"rgba(0,0,0,0)\",\"content_wrap_bg\":\"rgba(0,0,0,0)\",\"cta_button_static_drop_shadow\":\"rgba(0,0,0,0)\",\"cta_button_hover_drop_shadow\":\"rgba(0,0,0,0)\",\"cta_button_active_drop_shadow\":\"rgba(0,0,0,0)\",\"form_extras_border\":\"rgba(0,0,0,0)\",\"form_extras_drop_shadow\":\"rgba(0,0,0,0)\",\"optin_input_drop_shadow\":\"rgba(0,0,0,0)\",\"optin_dropdown_border\":\"#FFFFFF\",\"optin_dropdown_drop_shadow\":\"rgba(0,0,0,0)\",\"optin_success_border\":\"rgba(0,0,0,0)\",\"optin_success_drop_shadow\":\"rgba(0,0,0,0)\",\"submit_button_static_drop_shadow\":\"rgba(0,0,0,0)\",\"recaptcha_copy_border\":\"rgba(0,0,0,0)\",\"recaptcha_copy_drop_shadow\":\"rgba(0,0,0,0)\",\"content_border\":\"rgba(0,0,0,0)\",\"cta_cont_border\":\"rgba(0,0,0,0)\",\"form_cont_margin_are_sides_linked\":\"1\",\"form_cont_margin_unit\":\"px\",\"form_cont_margin_top\":0,\"form_cont_margin_right\":0,\"form_cont_margin_bottom\":0,\"form_cont_margin_left\":0,\"form_cont_padding_are_sides_linked\":\"1\",\"form_cont_padding_unit\":\"px\",\"form_cont_padding_top\":20,\"form_cont_padding_right\":20,\"form_cont_padding_bottom\":20,\"form_cont_padding_left\":20,\"form_cont_border_type\":\"solid\",\"form_cont_border_are_sides_linked\":\"1\",\"form_cont_border_unit\":\"px\",\"form_cont_border_top\":0,\"form_cont_border_right\":0,\"form_cont_border_bottom\":0,\"form_cont_border_left\":0,\"form_cont_radius_are_sides_linked\":\"1\",\"form_cont_radius_unit\":\"px\",\"form_cont_radius_top_left\":0,\"form_cont_radius_top_right\":0,\"form_cont_radius_bottom_left\":0,\"form_cont_radius_bottom_right\":0,\"form_extras_margin_are_sides_linked\":\"0\",\"form_extras_margin_unit\":\"px\",\"form_extras_margin_top\":10,\"form_extras_margin_right\":0,\"form_extras_margin_bottom\":0,\"form_extras_margin_left\":0,\"form_extras_padding_are_sides_linked\":\"1\",\"form_extras_padding_unit\":\"px\",\"form_extras_padding_top\":20,\"form_extras_padding_right\":20,\"form_extras_padding_bottom\":20,\"form_extras_padding_left\":20,\"form_extras_border_type\":\"solid\",\"form_extras_border_are_sides_linked\":\"1\",\"form_extras_border_unit\":\"px\",\"form_extras_border_top\":0,\"form_extras_border_right\":0,\"form_extras_border_bottom\":0,\"form_extras_border_left\":0,\"form_extras_radius_are_sides_linked\":\"1\",\"form_extras_radius_unit\":\"px\",\"form_extras_radius_top_left\":0,\"form_extras_radius_top_right\":0,\"form_extras_radius_bottom_left\":0,\"form_extras_radius_bottom_right\":0,\"form_extras_drop_shadow_unit\":\"px\",\"form_extras_drop_shadow_x\":0,\"form_extras_drop_shadow_y\":0,\"form_extras_drop_shadow_blur\":0,\"form_extras_drop_shadow_spread\":0,\"input_padding_are_sides_linked\":\"0\",\"input_padding_unit\":\"px\",\"input_padding_top\":9,\"input_padding_right\":10,\"input_padding_bottom\":9,\"input_padding_left\":10,\"input_border_type\":\"solid\",\"input_border_are_sides_linked\":\"1\",\"input_border_unit\":\"px\",\"input_border_top\":0,\"input_border_right\":0,\"input_border_bottom\":0,\"input_border_left\":0,\"input_radius_are_sides_linked\":\"1\",\"input_radius_unit\":\"px\",\"input_radius_top_left\":0,\"input_radius_top_right\":0,\"input_radius_bottom_left\":0,\"input_radius_bottom_right\":0,\"input_drop_shadow_unit\":\"px\",\"input_drop_shadow_x\":0,\"input_drop_shadow_y\":0,\"input_drop_shadow_blur\":0,\"input_drop_shadow_spread\":0,\"checkbox_border_type\":\"solid\",\"checkbox_border_are_sides_linked\":\"1\",\"checkbox_border_unit\":\"px\",\"checkbox_border_top\":0,\"checkbox_border_right\":0,\"checkbox_border_bottom\":0,\"checkbox_border_left\":0,\"checkbox_radius_are_sides_linked\":\"1\",\"checkbox_radius_unit\":\"px\",\"checkbox_radius_top_left\":0,\"checkbox_radius_top_right\":0,\"checkbox_radius_bottom_left\":0,\"checkbox_radius_bottom_right\":0,\"dropdown_margin_are_sides_linked\":\"1\",\"dropdown_margin_unit\":\"px\",\"dropdown_margin_top\":0,\"dropdown_margin_right\":0,\"dropdown_margin_bottom\":0,\"dropdown_margin_left\":0,\"dropdown_padding_are_sides_linked\":\"1\",\"dropdown_padding_unit\":\"px\",\"dropdown_padding_top\":0,\"dropdown_padding_right\":0,\"dropdown_padding_bottom\":0,\"dropdown_padding_left\":0,\"dropdown_border_type\":\"solid\",\"dropdown_border_are_sides_linked\":\"1\",\"dropdown_border_unit\":\"px\",\"dropdown_border_top\":0,\"dropdown_border_right\":0,\"dropdown_border_bottom\":0,\"dropdown_border_left\":0,\"dropdown_radius_are_sides_linked\":\"1\",\"dropdown_radius_unit\":\"px\",\"dropdown_radius_top_left\":0,\"dropdown_radius_top_right\":0,\"dropdown_radius_bottom_left\":0,\"dropdown_radius_bottom_right\":0,\"dropdown_drop_shadow_unit\":\"px\",\"dropdown_drop_shadow_x\":0,\"dropdown_drop_shadow_y\":0,\"dropdown_drop_shadow_blur\":0,\"dropdown_drop_shadow_spread\":0,\"submit_button_margin_are_sides_linked\":\"1\",\"submit_button_padding_are_sides_linked\":\"0\",\"submit_button_padding_unit\":\"px\",\"submit_button_padding_top\":2,\"submit_button_padding_right\":16,\"submit_button_padding_bottom\":2,\"submit_button_padding_left\":16,\"submit_button_border_type\":\"solid\",\"submit_button_border_are_sides_linked\":\"1\",\"submit_button_border_unit\":\"px\",\"submit_button_border_top\":0,\"submit_button_border_right\":0,\"submit_button_border_bottom\":0,\"submit_button_border_left\":0,\"submit_button_radius_are_sides_linked\":\"1\",\"submit_button_radius_unit\":\"px\",\"submit_button_radius_top_left\":0,\"submit_button_radius_top_right\":0,\"submit_button_radius_bottom_left\":0,\"submit_button_radius_bottom_right\":0,\"submit_button_drop_shadow_unit\":\"px\",\"submit_button_drop_shadow_x\":0,\"submit_button_drop_shadow_y\":0,\"submit_button_drop_shadow_blur\":0,\"submit_button_drop_shadow_spread\":0,\"error_message_margin_are_sides_linked\":\"0\",\"error_message_margin_unit\":\"px\",\"error_message_margin_top\":20,\"error_message_margin_right\":0,\"error_message_margin_bottom\":0,\"error_message_margin_left\":0,\"success_message_padding_are_sides_linked\":\"1\",\"success_message_padding_unit\":\"px\",\"success_message_padding_top\":40,\"success_message_padding_right\":40,\"success_message_padding_bottom\":40,\"success_message_padding_left\":40,\"success_message_border_type\":\"solid\",\"success_message_border_are_sides_linked\":\"1\",\"success_message_border_unit\":\"px\",\"success_message_border_top\":0,\"success_message_border_right\":0,\"success_message_border_bottom\":0,\"success_message_border_left\":0,\"success_message_radius_are_sides_linked\":\"1\",\"success_message_radius_unit\":\"px\",\"success_message_radius_top_left\":0,\"success_message_radius_top_right\":0,\"success_message_radius_bottom_left\":0,\"success_message_radius_bottom_right\":0,\"success_message_drop_shadow_unit\":\"px\",\"success_message_drop_shadow_x\":0,\"success_message_drop_shadow_y\":0,\"success_message_drop_shadow_blur\":0,\"success_message_drop_shadow_spread\":0,\"gdpr_margin_are_sides_linked\":\"0\",\"gdpr_margin_unit\":\"px\",\"gdpr_margin_top\":10,\"gdpr_margin_right\":0,\"gdpr_margin_bottom\":0,\"gdpr_margin_left\":0,\"gdpr_border_type\":\"solid\",\"gdpr_border_are_sides_linked\":\"1\",\"gdpr_border_unit\":\"px\",\"gdpr_border_top\":0,\"gdpr_border_right\":0,\"gdpr_border_bottom\":0,\"gdpr_border_left\":0,\"gdpr_radius_are_sides_linked\":\"1\",\"gdpr_radius_unit\":\"px\",\"gdpr_radius_top_left\":0,\"gdpr_radius_top_right\":0,\"gdpr_radius_bottom_left\":0,\"gdpr_radius_bottom_right\":0,\"recaptcha_margin_are_sides_linked\":\"0\",\"recaptcha_margin_unit\":\"px\",\"recaptcha_margin_top\":20,\"recaptcha_margin_right\":0,\"recaptcha_margin_bottom\":0,\"recaptcha_margin_left\":0,\"recaptcha_padding_are_sides_linked\":\"1\",\"recaptcha_padding_unit\":\"px\",\"recaptcha_padding_top\":0,\"recaptcha_padding_right\":0,\"recaptcha_padding_bottom\":0,\"recaptcha_padding_left\":0,\"recaptcha_border_type\":\"solid\",\"recaptcha_border_are_sides_linked\":\"1\",\"recaptcha_border_unit\":\"px\",\"recaptcha_border_top\":0,\"recaptcha_border_right\":0,\"recaptcha_border_bottom\":0,\"recaptcha_border_left\":0,\"recaptcha_radius_are_sides_linked\":\"1\",\"recaptcha_radius_unit\":\"px\",\"recaptcha_radius_top_left\":0,\"recaptcha_radius_top_right\":0,\"recaptcha_radius_bottom_left\":0,\"recaptcha_radius_bottom_right\":0,\"recaptcha_drop_shadow_unit\":\"px\",\"recaptcha_drop_shadow_x\":0,\"recaptcha_drop_shadow_y\":0,\"recaptcha_drop_shadow_blur\":0,\"recaptcha_drop_shadow_spread\":0,\"module_cont_margin_are_sides_linked\":\"1\",\"popup_cont_padding_are_sides_linked\":\"1\",\"popup_cont_padding_unit\":\"px\",\"popup_cont_padding_top\":10,\"popup_cont_padding_right\":10,\"popup_cont_padding_bottom\":10,\"popup_cont_padding_left\":10,\"embed_cont_margin_are_sides_linked\":\"1\",\"embed_cont_margin_unit\":\"px\",\"embed_cont_margin_top\":0,\"embed_cont_margin_right\":0,\"embed_cont_margin_bottom\":0,\"embed_cont_margin_left\":0,\"module_cont_margin_unit\":\"px\",\"module_cont_margin_top\":0,\"module_cont_margin_right\":0,\"module_cont_margin_bottom\":0,\"module_cont_margin_left\":0,\"module_cont_padding_are_sides_linked\":\"1\",\"module_cont_padding_unit\":\"px\",\"module_cont_padding_top\":0,\"module_cont_padding_right\":0,\"module_cont_padding_bottom\":0,\"module_cont_padding_left\":0,\"module_cont_border_type\":\"solid\",\"module_cont_border_are_sides_linked\":\"1\",\"module_cont_border_unit\":\"px\",\"module_cont_border_top\":0,\"module_cont_border_right\":0,\"module_cont_border_bottom\":0,\"module_cont_border_left\":0,\"module_cont_radius_are_sides_linked\":\"1\",\"module_cont_radius_unit\":\"px\",\"module_cont_radius_top_left\":0,\"module_cont_radius_top_right\":0,\"module_cont_radius_bottom_left\":0,\"module_cont_radius_bottom_right\":0,\"module_cont_drop_shadow_unit\":\"px\",\"module_cont_drop_shadow_x\":0,\"module_cont_drop_shadow_y\":0,\"module_cont_drop_shadow_blur\":0,\"module_cont_drop_shadow_spread\":0,\"layout_header_padding_are_sides_linked\":\"1\",\"layout_header_padding_unit\":\"px\",\"layout_header_padding_top\":20,\"layout_header_padding_right\":20,\"layout_header_padding_bottom\":20,\"layout_header_padding_left\":20,\"layout_header_border_type\":\"solid\",\"layout_header_border_are_sides_linked\":\"0\",\"layout_header_border_unit\":\"px\",\"layout_header_border_top\":0,\"layout_header_border_right\":0,\"layout_header_border_bottom\":1,\"layout_header_border_left\":0,\"layout_header_radius_are_sides_linked\":\"1\",\"layout_header_radius_unit\":\"px\",\"layout_header_radius_top_left\":0,\"layout_header_radius_top_right\":0,\"layout_header_radius_bottom_left\":0,\"layout_header_radius_bottom_right\":0,\"layout_header_drop_shadow_unit\":\"px\",\"layout_header_drop_shadow_x\":0,\"layout_header_drop_shadow_y\":0,\"layout_header_drop_shadow_blur\":0,\"layout_header_drop_shadow_spread\":0,\"layout_content_padding_are_sides_linked\":\"1\",\"layout_content_padding_unit\":\"px\",\"layout_content_padding_top\":0,\"layout_content_padding_right\":0,\"layout_content_padding_bottom\":0,\"layout_content_padding_left\":0,\"layout_content_border_type\":\"solid\",\"layout_content_border_are_sides_linked\":\"1\",\"layout_content_border_unit\":\"px\",\"layout_content_border_top\":0,\"layout_content_border_right\":0,\"layout_content_border_bottom\":0,\"layout_content_border_left\":0,\"layout_content_radius_are_sides_linked\":\"1\",\"layout_content_radius_unit\":\"px\",\"layout_content_radius_top_left\":0,\"layout_content_radius_top_right\":0,\"layout_content_radius_bottom_left\":0,\"layout_content_radius_bottom_right\":0,\"layout_footer_padding_are_sides_linked\":\"0\",\"layout_footer_padding_unit\":\"px\",\"layout_footer_padding_top\":1,\"layout_footer_padding_right\":20,\"layout_footer_padding_bottom\":20,\"layout_footer_padding_left\":20,\"layout_footer_border_type\":\"solid\",\"layout_footer_border_are_sides_linked\":\"1\",\"layout_footer_border_unit\":\"px\",\"layout_footer_border_top\":0,\"layout_footer_border_right\":0,\"layout_footer_border_bottom\":0,\"layout_footer_border_left\":0,\"layout_footer_radius_are_sides_linked\":\"1\",\"layout_footer_radius_unit\":\"px\",\"layout_footer_radius_top_left\":0,\"layout_footer_radius_top_right\":0,\"layout_footer_radius_bottom_left\":0,\"layout_footer_radius_bottom_right\":0,\"layout_footer_drop_shadow_unit\":\"px\",\"layout_footer_drop_shadow_x\":0,\"layout_footer_drop_shadow_y\":0,\"layout_footer_drop_shadow_blur\":0,\"layout_footer_drop_shadow_spread\":0,\"content_wrap_margin_are_sides_linked\":\"1\",\"content_wrap_margin_unit\":\"px\",\"content_wrap_margin_top\":0,\"content_wrap_margin_right\":0,\"content_wrap_margin_bottom\":0,\"content_wrap_margin_left\":0,\"content_wrap_padding_are_sides_linked\":\"1\",\"content_wrap_padding_unit\":\"px\",\"content_wrap_padding_top\":20,\"content_wrap_padding_right\":20,\"content_wrap_padding_bottom\":20,\"content_wrap_padding_left\":20,\"content_wrap_border_type\":\"solid\",\"content_wrap_border_are_sides_linked\":\"1\",\"content_wrap_border_unit\":\"px\",\"content_wrap_border_top\":0,\"content_wrap_border_right\":0,\"content_wrap_border_bottom\":0,\"content_wrap_border_left\":0,\"content_wrap_radius_are_sides_linked\":\"1\",\"content_wrap_radius_unit\":\"px\",\"content_wrap_radius_top_left\":0,\"content_wrap_radius_top_right\":0,\"content_wrap_radius_bottom_left\":0,\"content_wrap_radius_bottom_right\":0,\"title_margin_are_sides_linked\":\"1\",\"title_margin_unit\":\"px\",\"title_margin_top\":0,\"title_margin_right\":0,\"title_margin_bottom\":0,\"title_margin_left\":0,\"title_padding_are_sides_linked\":\"1\",\"title_padding_unit\":\"px\",\"title_padding_top\":0,\"title_padding_right\":0,\"title_padding_bottom\":0,\"title_padding_left\":0,\"title_border_type\":\"solid\",\"title_border_are_sides_linked\":\"1\",\"title_border_unit\":\"px\",\"title_border_top\":0,\"title_border_right\":0,\"title_border_bottom\":0,\"title_border_left\":0,\"title_radius_are_sides_linked\":\"1\",\"title_radius_unit\":\"px\",\"title_radius_top_left\":0,\"title_radius_top_right\":0,\"title_radius_bottom_left\":0,\"title_radius_bottom_right\":0,\"title_drop_shadow_unit\":\"px\",\"title_drop_shadow_x\":0,\"title_drop_shadow_y\":0,\"title_drop_shadow_blur\":0,\"title_drop_shadow_spread\":0,\"subtitle_margin_are_sides_linked\":\"0\",\"subtitle_margin_unit\":\"px\",\"subtitle_margin_top\":10,\"subtitle_margin_right\":0,\"subtitle_margin_bottom\":0,\"subtitle_margin_left\":0,\"subtitle_padding_are_sides_linked\":\"1\",\"subtitle_padding_unit\":\"px\",\"subtitle_padding_top\":0,\"subtitle_padding_right\":0,\"subtitle_padding_bottom\":0,\"subtitle_padding_left\":0,\"subtitle_border_type\":\"solid\",\"subtitle_border_are_sides_linked\":\"1\",\"subtitle_border_unit\":\"px\",\"subtitle_border_top\":0,\"subtitle_border_right\":0,\"subtitle_border_bottom\":0,\"subtitle_border_left\":0,\"subtitle_radius_are_sides_linked\":\"1\",\"subtitle_radius_unit\":\"px\",\"subtitle_radius_top_left\":0,\"subtitle_radius_top_right\":0,\"subtitle_radius_bottom_left\":0,\"subtitle_radius_bottom_right\":0,\"subtitle_drop_shadow_unit\":\"px\",\"subtitle_drop_shadow_x\":0,\"subtitle_drop_shadow_y\":0,\"subtitle_drop_shadow_blur\":0,\"subtitle_drop_shadow_spread\":0,\"main_content_margin_are_sides_linked\":\"1\",\"main_content_margin_unit\":\"px\",\"main_content_margin_top\":0,\"main_content_margin_right\":0,\"main_content_margin_bottom\":0,\"main_content_margin_left\":0,\"main_content_padding_are_sides_linked\":\"1\",\"main_content_padding_unit\":\"px\",\"main_content_padding_top\":0,\"main_content_padding_right\":0,\"main_content_padding_bottom\":0,\"main_content_padding_left\":0,\"main_content_border_type\":\"solid\",\"main_content_border_are_sides_linked\":\"1\",\"main_content_border_unit\":\"px\",\"main_content_border_top\":0,\"main_content_border_right\":0,\"main_content_border_bottom\":0,\"main_content_border_left\":0,\"cta_cont_margin_are_sides_linked\":\"0\",\"cta_cont_margin_unit\":\"px\",\"cta_cont_margin_top\":20,\"cta_cont_margin_right\":0,\"cta_cont_margin_bottom\":0,\"cta_cont_margin_left\":0,\"cta_cont_padding_are_sides_linked\":\"1\",\"cta_cont_padding_unit\":\"px\",\"cta_cont_padding_top\":0,\"cta_cont_padding_right\":0,\"cta_cont_padding_bottom\":0,\"cta_cont_padding_left\":0,\"cta_cont_border_type\":\"solid\",\"cta_cont_border_are_sides_linked\":\"1\",\"cta_cont_border_unit\":\"px\",\"cta_cont_border_top\":0,\"cta_cont_border_right\":0,\"cta_cont_border_bottom\":0,\"cta_cont_border_left\":0,\"cta_padding_are_sides_linked\":\"0\",\"cta_padding_unit\":\"px\",\"cta_padding_top\":2,\"cta_padding_right\":16,\"cta_padding_bottom\":2,\"cta_padding_left\":16,\"cta_border_type\":\"solid\",\"cta_border_are_sides_linked\":\"1\",\"cta_border_unit\":\"px\",\"cta_border_top\":0,\"cta_border_right\":0,\"cta_border_bottom\":0,\"cta_border_left\":0,\"cta_radius_are_sides_linked\":\"1\",\"cta_radius_unit\":\"px\",\"cta_radius_top_left\":0,\"cta_radius_top_right\":0,\"cta_radius_bottom_left\":0,\"cta_radius_bottom_right\":0,\"cta_drop_shadow_unit\":\"px\",\"cta_drop_shadow_x\":0,\"cta_drop_shadow_y\":0,\"cta_drop_shadow_blur\":0,\"cta_drop_shadow_spread\":0,\"nsa_link_margin_are_sides_linked\":\"0\",\"nsa_link_margin_unit\":\"px\",\"nsa_link_margin_top\":20,\"nsa_link_margin_right\":0,\"nsa_link_margin_bottom\":0,\"nsa_link_margin_left\":0,\"form_cont_margin_are_sides_linked_mobile\":\"1\",\"form_cont_margin_unit_mobile\":\"px\",\"form_cont_margin_top_mobile\":\"\",\"form_cont_margin_right_mobile\":\"\",\"form_cont_margin_bottom_mobile\":\"\",\"form_cont_margin_left_mobile\":\"\",\"form_cont_padding_are_sides_linked_mobile\":\"1\",\"form_cont_padding_unit_mobile\":\"px\",\"form_cont_padding_top_mobile\":\"\",\"form_cont_padding_right_mobile\":\"\",\"form_cont_padding_bottom_mobile\":\"\",\"form_cont_padding_left_mobile\":\"\",\"form_cont_border_type_mobile\":\"solid\",\"form_cont_border_are_sides_linked_mobile\":\"1\",\"form_cont_border_unit_mobile\":\"px\",\"form_cont_border_top_mobile\":\"\",\"form_cont_border_right_mobile\":\"\",\"form_cont_border_bottom_mobile\":\"\",\"form_cont_border_left_mobile\":\"\",\"form_cont_radius_are_sides_linked_mobile\":\"1\",\"form_cont_radius_unit_mobile\":\"px\",\"form_cont_radius_top_left_mobile\":\"\",\"form_cont_radius_top_right_mobile\":\"\",\"form_cont_radius_bottom_left_mobile\":\"\",\"form_cont_radius_bottom_right_mobile\":\"\",\"form_extras_margin_are_sides_linked_mobile\":\"1\",\"form_extras_margin_unit_mobile\":\"px\",\"form_extras_margin_top_mobile\":\"\",\"form_extras_margin_right_mobile\":\"\",\"form_extras_margin_bottom_mobile\":\"\",\"form_extras_margin_left_mobile\":\"\",\"form_extras_padding_are_sides_linked_mobile\":\"1\",\"form_extras_padding_unit_mobile\":\"px\",\"form_extras_padding_top_mobile\":\"\",\"form_extras_padding_right_mobile\":\"\",\"form_extras_padding_bottom_mobile\":\"\",\"form_extras_padding_left_mobile\":\"\",\"form_extras_border_type_mobile\":\"solid\",\"form_extras_border_are_sides_linked_mobile\":\"1\",\"form_extras_border_unit_mobile\":\"px\",\"form_extras_border_top_mobile\":\"\",\"form_extras_border_right_mobile\":\"\",\"form_extras_border_bottom_mobile\":\"\",\"form_extras_border_left_mobile\":\"\",\"form_extras_radius_are_sides_linked_mobile\":\"1\",\"form_extras_radius_unit_mobile\":\"px\",\"form_extras_radius_top_left_mobile\":\"\",\"form_extras_radius_top_right_mobile\":\"\",\"form_extras_radius_bottom_left_mobile\":\"\",\"form_extras_radius_bottom_right_mobile\":\"\",\"form_extras_drop_shadow_unit_mobile\":\"px\",\"form_extras_drop_shadow_x_mobile\":\"\",\"form_extras_drop_shadow_y_mobile\":\"\",\"form_extras_drop_shadow_blur_mobile\":\"\",\"form_extras_drop_shadow_spread_mobile\":\"\",\"input_padding_are_sides_linked_mobile\":\"1\",\"input_padding_unit_mobile\":\"px\",\"input_padding_top_mobile\":\"\",\"input_padding_right_mobile\":\"\",\"input_padding_bottom_mobile\":\"\",\"input_padding_left_mobile\":\"\",\"input_border_type_mobile\":\"solid\",\"input_border_are_sides_linked_mobile\":\"1\",\"input_border_unit_mobile\":\"px\",\"input_border_top_mobile\":\"\",\"input_border_right_mobile\":\"\",\"input_border_bottom_mobile\":\"\",\"input_border_left_mobile\":\"\",\"input_radius_are_sides_linked_mobile\":\"1\",\"input_radius_unit_mobile\":\"px\",\"input_radius_top_left_mobile\":\"\",\"input_radius_top_right_mobile\":\"\",\"input_radius_bottom_left_mobile\":\"\",\"input_radius_bottom_right_mobile\":\"\",\"input_drop_shadow_unit_mobile\":\"px\",\"input_drop_shadow_x_mobile\":\"\",\"input_drop_shadow_y_mobile\":\"\",\"input_drop_shadow_blur_mobile\":\"\",\"input_drop_shadow_spread_mobile\":\"\",\"checkbox_border_type_mobile\":\"solid\",\"checkbox_border_are_sides_linked_mobile\":\"1\",\"checkbox_border_unit_mobile\":\"px\",\"checkbox_border_top_mobile\":\"\",\"checkbox_border_right_mobile\":\"\",\"checkbox_border_bottom_mobile\":\"\",\"checkbox_border_left_mobile\":\"\",\"checkbox_radius_are_sides_linked_mobile\":\"1\",\"checkbox_radius_unit_mobile\":\"px\",\"checkbox_radius_top_left_mobile\":\"\",\"checkbox_radius_top_right_mobile\":\"\",\"checkbox_radius_bottom_left_mobile\":\"\",\"checkbox_radius_bottom_right_mobile\":\"\",\"dropdown_margin_are_sides_linked_mobile\":\"1\",\"dropdown_margin_unit_mobile\":\"px\",\"dropdown_margin_top_mobile\":\"\",\"dropdown_margin_right_mobile\":\"\",\"dropdown_margin_bottom_mobile\":\"\",\"dropdown_margin_left_mobile\":\"\",\"dropdown_padding_are_sides_linked_mobile\":\"1\",\"dropdown_padding_unit_mobile\":\"px\",\"dropdown_padding_top_mobile\":\"\",\"dropdown_padding_right_mobile\":\"\",\"dropdown_padding_bottom_mobile\":\"\",\"dropdown_padding_left_mobile\":\"\",\"dropdown_border_type_mobile\":\"solid\",\"dropdown_border_are_sides_linked_mobile\":\"1\",\"dropdown_border_unit_mobile\":\"px\",\"dropdown_border_top_mobile\":\"\",\"dropdown_border_right_mobile\":\"\",\"dropdown_border_bottom_mobile\":\"\",\"dropdown_border_left_mobile\":\"\",\"dropdown_radius_are_sides_linked_mobile\":\"1\",\"dropdown_radius_unit_mobile\":\"px\",\"dropdown_radius_top_left_mobile\":\"\",\"dropdown_radius_top_right_mobile\":\"\",\"dropdown_radius_bottom_left_mobile\":\"\",\"dropdown_radius_bottom_right_mobile\":\"\",\"dropdown_drop_shadow_unit_mobile\":\"px\",\"dropdown_drop_shadow_x_mobile\":\"\",\"dropdown_drop_shadow_y_mobile\":\"\",\"dropdown_drop_shadow_blur_mobile\":\"\",\"dropdown_drop_shadow_spread_mobile\":\"\",\"submit_button_margin_are_sides_linked_mobile\":\"1\",\"submit_button_margin_unit_mobile\":\"px\",\"submit_button_margin_top_mobile\":\"\",\"submit_button_margin_right_mobile\":\"\",\"submit_button_margin_bottom_mobile\":\"\",\"submit_button_margin_left_mobile\":\"\",\"submit_button_padding_are_sides_linked_mobile\":\"1\",\"submit_button_padding_unit_mobile\":\"px\",\"submit_button_padding_top_mobile\":\"\",\"submit_button_padding_right_mobile\":\"\",\"submit_button_padding_bottom_mobile\":\"\",\"submit_button_padding_left_mobile\":\"\",\"submit_button_border_type_mobile\":\"solid\",\"submit_button_border_are_sides_linked_mobile\":\"1\",\"submit_button_border_unit_mobile\":\"px\",\"submit_button_border_top_mobile\":\"\",\"submit_button_border_right_mobile\":\"\",\"submit_button_border_bottom_mobile\":\"\",\"submit_button_border_left_mobile\":\"\",\"submit_button_radius_are_sides_linked_mobile\":\"1\",\"submit_button_radius_unit_mobile\":\"px\",\"submit_button_radius_top_left_mobile\":\"\",\"submit_button_radius_top_right_mobile\":\"\",\"submit_button_radius_bottom_left_mobile\":\"\",\"submit_button_radius_bottom_right_mobile\":\"\",\"submit_button_drop_shadow_unit_mobile\":\"px\",\"submit_button_drop_shadow_x_mobile\":\"\",\"submit_button_drop_shadow_y_mobile\":\"\",\"submit_button_drop_shadow_blur_mobile\":\"\",\"submit_button_drop_shadow_spread_mobile\":\"\",\"error_message_margin_are_sides_linked_mobile\":\"1\",\"error_message_margin_unit_mobile\":\"px\",\"error_message_margin_top_mobile\":\"\",\"error_message_margin_right_mobile\":\"\",\"error_message_margin_bottom_mobile\":\"\",\"error_message_margin_left_mobile\":\"\",\"success_message_padding_are_sides_linked_mobile\":\"1\",\"success_message_padding_unit_mobile\":\"px\",\"success_message_padding_top_mobile\":\"\",\"success_message_padding_right_mobile\":\"\",\"success_message_padding_bottom_mobile\":\"\",\"success_message_padding_left_mobile\":\"\",\"success_message_border_type_mobile\":\"solid\",\"success_message_border_are_sides_linked_mobile\":\"1\",\"success_message_border_unit_mobile\":\"px\",\"success_message_border_top_mobile\":\"\",\"success_message_border_right_mobile\":\"\",\"success_message_border_bottom_mobile\":\"\",\"success_message_border_left_mobile\":\"\",\"success_message_radius_are_sides_linked_mobile\":\"1\",\"success_message_radius_unit_mobile\":\"px\",\"success_message_radius_top_left_mobile\":\"\",\"success_message_radius_top_right_mobile\":\"\",\"success_message_radius_bottom_left_mobile\":\"\",\"success_message_radius_bottom_right_mobile\":\"\",\"success_message_drop_shadow_unit_mobile\":\"px\",\"success_message_drop_shadow_x_mobile\":\"\",\"success_message_drop_shadow_y_mobile\":\"\",\"success_message_drop_shadow_blur_mobile\":\"\",\"success_message_drop_shadow_spread_mobile\":\"\",\"gdpr_margin_are_sides_linked_mobile\":\"1\",\"gdpr_margin_unit_mobile\":\"px\",\"gdpr_margin_top_mobile\":\"\",\"gdpr_margin_right_mobile\":\"\",\"gdpr_margin_bottom_mobile\":\"\",\"gdpr_margin_left_mobile\":\"\",\"gdpr_border_type_mobile\":\"solid\",\"gdpr_border_are_sides_linked_mobile\":\"1\",\"gdpr_border_unit_mobile\":\"px\",\"gdpr_border_top_mobile\":\"\",\"gdpr_border_right_mobile\":\"\",\"gdpr_border_bottom_mobile\":\"\",\"gdpr_border_left_mobile\":\"\",\"gdpr_radius_are_sides_linked_mobile\":\"1\",\"gdpr_radius_unit_mobile\":\"px\",\"gdpr_radius_top_left_mobile\":\"\",\"gdpr_radius_top_right_mobile\":\"\",\"gdpr_radius_bottom_left_mobile\":\"\",\"gdpr_radius_bottom_right_mobile\":\"\",\"recaptcha_margin_are_sides_linked_mobile\":\"1\",\"recaptcha_margin_unit_mobile\":\"px\",\"recaptcha_margin_top_mobile\":\"\",\"recaptcha_margin_right_mobile\":\"\",\"recaptcha_margin_bottom_mobile\":\"\",\"recaptcha_margin_left_mobile\":\"\",\"recaptcha_padding_are_sides_linked_mobile\":\"1\",\"recaptcha_padding_unit_mobile\":\"px\",\"recaptcha_padding_top_mobile\":\"\",\"recaptcha_padding_right_mobile\":\"\",\"recaptcha_padding_bottom_mobile\":\"\",\"recaptcha_padding_left_mobile\":\"\",\"recaptcha_border_type_mobile\":\"solid\",\"recaptcha_border_are_sides_linked_mobile\":\"1\",\"recaptcha_border_unit_mobile\":\"px\",\"recaptcha_border_top_mobile\":\"\",\"recaptcha_border_right_mobile\":\"\",\"recaptcha_border_bottom_mobile\":\"\",\"recaptcha_border_left_mobile\":\"\",\"recaptcha_radius_are_sides_linked_mobile\":\"1\",\"recaptcha_radius_unit_mobile\":\"px\",\"recaptcha_radius_top_left_mobile\":\"\",\"recaptcha_radius_top_right_mobile\":\"\",\"recaptcha_radius_bottom_left_mobile\":\"\",\"recaptcha_radius_bottom_right_mobile\":\"\",\"recaptcha_drop_shadow_unit_mobile\":\"px\",\"recaptcha_drop_shadow_x_mobile\":\"\",\"recaptcha_drop_shadow_y_mobile\":\"\",\"recaptcha_drop_shadow_blur_mobile\":\"\",\"recaptcha_drop_shadow_spread_mobile\":\"\",\"popup_cont_padding_are_sides_linked_mobile\":\"1\",\"popup_cont_padding_unit_mobile\":\"px\",\"popup_cont_padding_top_mobile\":\"\",\"popup_cont_padding_right_mobile\":\"\",\"popup_cont_padding_bottom_mobile\":\"\",\"popup_cont_padding_left_mobile\":\"\",\"embed_cont_margin_are_sides_linked_mobile\":\"1\",\"embed_cont_margin_unit_mobile\":\"px\",\"embed_cont_margin_top_mobile\":\"\",\"embed_cont_margin_right_mobile\":\"\",\"embed_cont_margin_bottom_mobile\":\"\",\"embed_cont_margin_left_mobile\":\"\",\"module_cont_margin_are_sides_linked_mobile\":\"1\",\"module_cont_margin_unit_mobile\":\"px\",\"module_cont_margin_top_mobile\":\"\",\"module_cont_margin_right_mobile\":\"\",\"module_cont_margin_bottom_mobile\":\"\",\"module_cont_margin_left_mobile\":\"\",\"module_cont_padding_are_sides_linked_mobile\":\"1\",\"module_cont_padding_unit_mobile\":\"px\",\"module_cont_padding_top_mobile\":\"\",\"module_cont_padding_right_mobile\":\"\",\"module_cont_padding_bottom_mobile\":\"\",\"module_cont_padding_left_mobile\":\"\",\"module_cont_border_type_mobile\":\"solid\",\"module_cont_border_are_sides_linked_mobile\":\"1\",\"module_cont_border_unit_mobile\":\"px\",\"module_cont_border_top_mobile\":\"\",\"module_cont_border_right_mobile\":\"\",\"module_cont_border_bottom_mobile\":\"\",\"module_cont_border_left_mobile\":\"\",\"module_cont_radius_are_sides_linked_mobile\":\"1\",\"module_cont_radius_unit_mobile\":\"px\",\"module_cont_radius_top_left_mobile\":\"\",\"module_cont_radius_top_right_mobile\":\"\",\"module_cont_radius_bottom_left_mobile\":\"\",\"module_cont_radius_bottom_right_mobile\":\"\",\"module_cont_drop_shadow_unit_mobile\":\"px\",\"module_cont_drop_shadow_x_mobile\":\"\",\"module_cont_drop_shadow_y_mobile\":\"\",\"module_cont_drop_shadow_blur_mobile\":\"\",\"module_cont_drop_shadow_spread_mobile\":\"\",\"layout_header_padding_are_sides_linked_mobile\":\"1\",\"layout_header_padding_unit_mobile\":\"px\",\"layout_header_padding_top_mobile\":\"\",\"layout_header_padding_right_mobile\":\"\",\"layout_header_padding_bottom_mobile\":\"\",\"layout_header_padding_left_mobile\":\"\",\"layout_header_border_type_mobile\":\"solid\",\"layout_header_border_are_sides_linked_mobile\":\"1\",\"layout_header_border_unit_mobile\":\"px\",\"layout_header_border_top_mobile\":\"\",\"layout_header_border_right_mobile\":\"\",\"layout_header_border_bottom_mobile\":\"\",\"layout_header_border_left_mobile\":\"\",\"layout_header_radius_are_sides_linked_mobile\":\"1\",\"layout_header_radius_unit_mobile\":\"px\",\"layout_header_radius_top_left_mobile\":\"\",\"layout_header_radius_top_right_mobile\":\"\",\"layout_header_radius_bottom_left_mobile\":\"\",\"layout_header_radius_bottom_right_mobile\":\"\",\"layout_header_drop_shadow_unit_mobile\":\"px\",\"layout_header_drop_shadow_x_mobile\":\"\",\"layout_header_drop_shadow_y_mobile\":\"\",\"layout_header_drop_shadow_blur_mobile\":\"\",\"layout_header_drop_shadow_spread_mobile\":\"\",\"layout_content_padding_are_sides_linked_mobile\":\"1\",\"layout_content_padding_unit_mobile\":\"px\",\"layout_content_padding_top_mobile\":\"\",\"layout_content_padding_right_mobile\":\"\",\"layout_content_padding_bottom_mobile\":\"\",\"layout_content_padding_left_mobile\":\"\",\"layout_content_border_type_mobile\":\"solid\",\"layout_content_border_are_sides_linked_mobile\":\"1\",\"layout_content_border_unit_mobile\":\"px\",\"layout_content_border_top_mobile\":\"\",\"layout_content_border_right_mobile\":\"\",\"layout_content_border_bottom_mobile\":\"\",\"layout_content_border_left_mobile\":\"\",\"layout_content_radius_are_sides_linked_mobile\":\"1\",\"layout_content_radius_unit_mobile\":\"px\",\"layout_content_radius_top_left_mobile\":\"\",\"layout_content_radius_top_right_mobile\":\"\",\"layout_content_radius_bottom_left_mobile\":\"\",\"layout_content_radius_bottom_right_mobile\":\"\",\"layout_footer_padding_are_sides_linked_mobile\":\"1\",\"layout_footer_padding_unit_mobile\":\"px\",\"layout_footer_padding_top_mobile\":\"\",\"layout_footer_padding_right_mobile\":\"\",\"layout_footer_padding_bottom_mobile\":\"\",\"layout_footer_padding_left_mobile\":\"\",\"layout_footer_border_type_mobile\":\"solid\",\"layout_footer_border_are_sides_linked_mobile\":\"1\",\"layout_footer_border_unit_mobile\":\"px\",\"layout_footer_border_top_mobile\":\"\",\"layout_footer_border_right_mobile\":\"\",\"layout_footer_border_bottom_mobile\":\"\",\"layout_footer_border_left_mobile\":\"\",\"layout_footer_radius_are_sides_linked_mobile\":\"1\",\"layout_footer_radius_unit_mobile\":\"px\",\"layout_footer_radius_top_left_mobile\":\"\",\"layout_footer_radius_top_right_mobile\":\"\",\"layout_footer_radius_bottom_left_mobile\":\"\",\"layout_footer_radius_bottom_right_mobile\":\"\",\"layout_footer_drop_shadow_unit_mobile\":\"px\",\"layout_footer_drop_shadow_x_mobile\":\"\",\"layout_footer_drop_shadow_y_mobile\":\"\",\"layout_footer_drop_shadow_blur_mobile\":\"\",\"layout_footer_drop_shadow_spread_mobile\":\"\",\"content_wrap_margin_are_sides_linked_mobile\":\"1\",\"content_wrap_margin_unit_mobile\":\"px\",\"content_wrap_margin_top_mobile\":\"\",\"content_wrap_margin_right_mobile\":\"\",\"content_wrap_margin_bottom_mobile\":\"\",\"content_wrap_margin_left_mobile\":\"\",\"content_wrap_padding_are_sides_linked_mobile\":\"1\",\"content_wrap_padding_unit_mobile\":\"px\",\"content_wrap_padding_top_mobile\":\"\",\"content_wrap_padding_right_mobile\":\"\",\"content_wrap_padding_bottom_mobile\":\"\",\"content_wrap_padding_left_mobile\":\"\",\"content_wrap_border_type_mobile\":\"solid\",\"content_wrap_border_are_sides_linked_mobile\":\"1\",\"content_wrap_border_unit_mobile\":\"px\",\"content_wrap_border_top_mobile\":\"\",\"content_wrap_border_right_mobile\":\"\",\"content_wrap_border_bottom_mobile\":\"\",\"content_wrap_border_left_mobile\":\"\",\"content_wrap_radius_are_sides_linked_mobile\":\"1\",\"content_wrap_radius_unit_mobile\":\"px\",\"content_wrap_radius_top_left_mobile\":\"\",\"content_wrap_radius_top_right_mobile\":\"\",\"content_wrap_radius_bottom_left_mobile\":\"\",\"content_wrap_radius_bottom_right_mobile\":\"\",\"title_margin_are_sides_linked_mobile\":\"1\",\"title_margin_unit_mobile\":\"px\",\"title_margin_top_mobile\":\"\",\"title_margin_right_mobile\":\"\",\"title_margin_bottom_mobile\":\"\",\"title_margin_left_mobile\":\"\",\"title_padding_are_sides_linked_mobile\":\"1\",\"title_padding_unit_mobile\":\"px\",\"title_padding_top_mobile\":\"\",\"title_padding_right_mobile\":\"\",\"title_padding_bottom_mobile\":\"\",\"title_padding_left_mobile\":\"\",\"title_border_type_mobile\":\"solid\",\"title_border_are_sides_linked_mobile\":\"1\",\"title_border_unit_mobile\":\"px\",\"title_border_top_mobile\":\"\",\"title_border_right_mobile\":\"\",\"title_border_bottom_mobile\":\"\",\"title_border_left_mobile\":\"\",\"title_radius_are_sides_linked_mobile\":\"1\",\"title_radius_unit_mobile\":\"px\",\"title_radius_top_left_mobile\":\"\",\"title_radius_top_right_mobile\":\"\",\"title_radius_bottom_left_mobile\":\"\",\"title_radius_bottom_right_mobile\":\"\",\"title_drop_shadow_unit_mobile\":\"px\",\"title_drop_shadow_x_mobile\":\"\",\"title_drop_shadow_y_mobile\":\"\",\"title_drop_shadow_blur_mobile\":\"\",\"title_drop_shadow_spread_mobile\":\"\",\"subtitle_margin_are_sides_linked_mobile\":\"1\",\"subtitle_margin_unit_mobile\":\"px\",\"subtitle_margin_top_mobile\":\"\",\"subtitle_margin_right_mobile\":\"\",\"subtitle_margin_bottom_mobile\":\"\",\"subtitle_margin_left_mobile\":\"\",\"subtitle_padding_are_sides_linked_mobile\":\"1\",\"subtitle_padding_unit_mobile\":\"px\",\"subtitle_padding_top_mobile\":\"\",\"subtitle_padding_right_mobile\":\"\",\"subtitle_padding_bottom_mobile\":\"\",\"subtitle_padding_left_mobile\":\"\",\"subtitle_border_type_mobile\":\"solid\",\"subtitle_border_are_sides_linked_mobile\":\"1\",\"subtitle_border_unit_mobile\":\"px\",\"subtitle_border_top_mobile\":\"\",\"subtitle_border_right_mobile\":\"\",\"subtitle_border_bottom_mobile\":\"\",\"subtitle_border_left_mobile\":\"\",\"subtitle_radius_are_sides_linked_mobile\":\"1\",\"subtitle_radius_unit_mobile\":\"px\",\"subtitle_radius_top_left_mobile\":\"\",\"subtitle_radius_top_right_mobile\":\"\",\"subtitle_radius_bottom_left_mobile\":\"\",\"subtitle_radius_bottom_right_mobile\":\"\",\"subtitle_drop_shadow_unit_mobile\":\"px\",\"subtitle_drop_shadow_x_mobile\":\"\",\"subtitle_drop_shadow_y_mobile\":\"\",\"subtitle_drop_shadow_blur_mobile\":\"\",\"subtitle_drop_shadow_spread_mobile\":\"\",\"main_content_margin_are_sides_linked_mobile\":\"1\",\"main_content_margin_unit_mobile\":\"px\",\"main_content_margin_top_mobile\":\"\",\"main_content_margin_right_mobile\":\"\",\"main_content_margin_bottom_mobile\":\"\",\"main_content_margin_left_mobile\":\"\",\"main_content_padding_are_sides_linked_mobile\":\"1\",\"main_content_padding_unit_mobile\":\"px\",\"main_content_padding_top_mobile\":\"\",\"main_content_padding_right_mobile\":\"\",\"main_content_padding_bottom_mobile\":\"\",\"main_content_padding_left_mobile\":\"\",\"main_content_border_type_mobile\":\"solid\",\"main_content_border_are_sides_linked_mobile\":\"1\",\"main_content_border_unit_mobile\":\"px\",\"main_content_border_top_mobile\":\"\",\"main_content_border_right_mobile\":\"\",\"main_content_border_bottom_mobile\":\"\",\"main_content_border_left_mobile\":\"\",\"main_content_radius_are_sides_linked_mobile\":\"1\",\"main_content_radius_unit_mobile\":\"px\",\"main_content_radius_top_left_mobile\":\"\",\"main_content_radius_top_right_mobile\":\"\",\"main_content_radius_bottom_left_mobile\":\"\",\"main_content_radius_bottom_right_mobile\":\"\",\"cta_cont_margin_are_sides_linked_mobile\":\"1\",\"cta_cont_margin_unit_mobile\":\"px\",\"cta_cont_margin_top_mobile\":\"\",\"cta_cont_margin_right_mobile\":\"\",\"cta_cont_margin_bottom_mobile\":\"\",\"cta_cont_margin_left_mobile\":\"\",\"cta_cont_padding_are_sides_linked_mobile\":\"1\",\"cta_cont_padding_unit_mobile\":\"px\",\"cta_cont_padding_top_mobile\":\"\",\"cta_cont_padding_right_mobile\":\"\",\"cta_cont_padding_bottom_mobile\":\"\",\"cta_cont_padding_left_mobile\":\"\",\"cta_cont_border_type_mobile\":\"solid\",\"cta_cont_border_are_sides_linked_mobile\":\"1\",\"cta_cont_border_unit_mobile\":\"px\",\"cta_cont_border_top_mobile\":\"\",\"cta_cont_border_right_mobile\":\"\",\"cta_cont_border_bottom_mobile\":\"\",\"cta_cont_border_left_mobile\":\"\",\"cta_padding_are_sides_linked_mobile\":\"1\",\"cta_padding_unit_mobile\":\"px\",\"cta_padding_top_mobile\":\"\",\"cta_padding_right_mobile\":\"\",\"cta_padding_bottom_mobile\":\"\",\"cta_padding_left_mobile\":\"\",\"cta_border_type_mobile\":\"solid\",\"cta_border_are_sides_linked_mobile\":\"1\",\"cta_border_unit_mobile\":\"px\",\"cta_border_top_mobile\":\"\",\"cta_border_right_mobile\":\"\",\"cta_border_bottom_mobile\":\"\",\"cta_border_left_mobile\":\"\",\"cta_radius_are_sides_linked_mobile\":\"1\",\"cta_radius_unit_mobile\":\"px\",\"cta_radius_top_left_mobile\":\"\",\"cta_radius_top_right_mobile\":\"\",\"cta_radius_bottom_left_mobile\":\"\",\"cta_radius_bottom_right_mobile\":\"\",\"cta_drop_shadow_unit_mobile\":\"px\",\"cta_drop_shadow_x_mobile\":\"\",\"cta_drop_shadow_y_mobile\":\"\",\"cta_drop_shadow_blur_mobile\":\"\",\"cta_drop_shadow_spread_mobile\":\"\",\"nsa_link_margin_are_sides_linked_mobile\":\"1\",\"nsa_link_margin_unit_mobile\":\"px\",\"nsa_link_margin_top_mobile\":\"\",\"nsa_link_margin_right_mobile\":\"\",\"nsa_link_margin_bottom_mobile\":\"\",\"nsa_link_margin_left_mobile\":\"\",\"title_font_family\":\"custom\",\"title_custom_font_family\":\"Georgia,Times,serif\",\"title_font_size\":33,\"title_font_size_unit\":\"px\",\"title_font_weight\":400,\"title_alignment\":\"left\",\"title_line_height\":38,\"title_line_height_unit\":\"px\",\"title_letter_spacing\":0,\"title_letter_spacing_unit\":\"px\",\"title_text_transform\":\"none\",\"title_text_decoration\":\"none\",\"subtitle_font_family\":\"Open Sans\",\"subtitle_custom_font_family\":\"inherit\",\"subtitle_font_size\":14,\"subtitle_font_size_unit\":\"px\",\"subtitle_font_weight\":700,\"subtitle_alignment\":\"left\",\"subtitle_line_height\":24,\"subtitle_line_height_unit\":\"px\",\"subtitle_letter_spacing\":0,\"subtitle_letter_spacing_unit\":\"px\",\"subtitle_text_transform\":\"none\",\"subtitle_text_decoration\":\"none\",\"main_content_paragraph_font_family\":\"Open Sans\",\"main_content_paragraph_custom_font_family\":\"inherit\",\"main_content_paragraph_font_size\":14,\"main_content_paragraph_font_size_unit\":\"px\",\"main_content_paragraph_font_weight\":\"regular\",\"main_content_paragraph_alignment\":\"left\",\"main_content_paragraph_line_height\":1.45,\"main_content_paragraph_line_height_unit\":\"em\",\"main_content_paragraph_letter_spacing\":0,\"main_content_paragraph_letter_spacing_unit\":\"px\",\"main_content_paragraph_text_transform\":\"none\",\"main_content_paragraph_text_decoration\":\"none\",\"main_content_heading_one_font_family\":\"Open Sans\",\"main_content_heading_one_custom_font_family\":\"inherit\",\"main_content_heading_one_font_size\":28,\"main_content_heading_one_font_size_unit\":\"px\",\"main_content_heading_one_font_weight\":700,\"main_content_heading_one_alignment\":\"left\",\"main_content_heading_one_line_height\":1.4,\"main_content_heading_one_line_height_unit\":\"em\",\"main_content_heading_one_letter_spacing\":0,\"main_content_heading_one_letter_spacing_unit\":\"px\",\"main_content_heading_one_text_transform\":\"none\",\"main_content_heading_one_text_decoration\":\"none\",\"main_content_heading_two_font_family\":\"custom\",\"main_content_heading_two_custom_font_family\":\"inherit\",\"main_content_heading_two_font_size\":22,\"main_content_heading_two_font_size_unit\":\"px\",\"main_content_heading_two_font_weight\":700,\"main_content_heading_two_alignment\":\"left\",\"main_content_heading_two_line_height\":1.4,\"main_content_heading_two_line_height_unit\":\"em\",\"main_content_heading_two_letter_spacing\":0,\"main_content_heading_two_letter_spacing_unit\":\"px\",\"main_content_heading_two_text_transform\":\"none\",\"main_content_heading_two_text_decoration\":\"none\",\"main_content_heading_three_font_family\":\"Open Sans\",\"main_content_heading_three_custom_font_family\":\"inherit\",\"main_content_heading_three_font_size\":18,\"main_content_heading_three_font_size_unit\":\"px\",\"main_content_heading_three_font_weight\":700,\"main_content_heading_three_alignment\":\"left\",\"main_content_heading_three_line_height\":1.4,\"main_content_heading_three_line_height_unit\":\"em\",\"main_content_heading_three_letter_spacing\":0,\"main_content_heading_three_letter_spacing_unit\":\"px\",\"main_content_heading_three_text_transform\":\"none\",\"main_content_heading_three_text_decoration\":\"none\",\"main_content_heading_four_font_family\":\"Open Sans\",\"main_content_heading_four_custom_font_family\":\"inherit\",\"main_content_heading_four_font_size\":16,\"main_content_heading_four_font_size_unit\":\"px\",\"main_content_heading_four_font_weight\":700,\"main_content_heading_four_alignment\":\"left\",\"main_content_heading_four_line_height\":1.4,\"main_content_heading_four_line_height_unit\":\"em\",\"main_content_heading_four_letter_spacing\":0,\"main_content_heading_four_letter_spacing_unit\":\"px\",\"main_content_heading_four_text_transform\":\"none\",\"main_content_heading_four_text_decoration\":\"none\",\"main_content_heading_five_font_family\":\"Open Sans\",\"main_content_heading_five_custom_font_family\":\"inherit\",\"main_content_heading_five_font_size\":14,\"main_content_heading_five_font_size_unit\":\"px\",\"main_content_heading_five_font_weight\":700,\"main_content_heading_five_alignment\":\"left\",\"main_content_heading_five_line_height\":1.4,\"main_content_heading_five_line_height_unit\":\"em\",\"main_content_heading_five_letter_spacing\":0,\"main_content_heading_five_letter_spacing_unit\":\"px\",\"main_content_heading_five_text_transform\":\"none\",\"main_content_heading_five_text_decoration\":\"none\",\"main_content_heading_six_font_family\":\"Open Sans\",\"main_content_heading_six_custom_font_family\":\"inherit\",\"main_content_heading_six_font_size\":12,\"main_content_heading_six_font_size_unit\":\"px\",\"main_content_heading_six_font_weight\":700,\"main_content_heading_six_alignment\":\"left\",\"main_content_heading_six_line_height\":1.4,\"main_content_heading_six_line_height_unit\":\"em\",\"main_content_heading_six_letter_spacing\":0,\"main_content_heading_six_letter_spacing_unit\":\"px\",\"main_content_heading_six_text_transform\":\"uppercase\",\"main_content_heading_six_text_decoration\":\"none\",\"main_content_lists_font_family\":\"Open Sans\",\"main_content_lists_custom_font_family\":\"inherit\",\"main_content_lists_font_size\":14,\"main_content_lists_font_size_unit\":\"px\",\"main_content_lists_font_weight\":\"regular\",\"main_content_lists_alignment\":\"left\",\"main_content_lists_line_height\":1.45,\"main_content_lists_line_height_unit\":\"em\",\"main_content_lists_letter_spacing\":0,\"main_content_lists_letter_spacing_unit\":\"px\",\"main_content_lists_text_transform\":\"none\",\"main_content_lists_text_decoration\":\"none\",\"cta_font_family\":\"Open Sans\",\"cta_custom_font_family\":\"inherit\",\"cta_font_size\":13,\"cta_font_size_unit\":\"px\",\"cta_font_weight\":\"bold\",\"cta_alignment\":\"center\",\"cta_line_height\":32,\"cta_line_height_unit\":\"px\",\"cta_letter_spacing\":0.5,\"cta_letter_spacing_unit\":\"px\",\"cta_text_transform\":\"none\",\"cta_text_decoration\":\"none\",\"never_see_link_font_family\":\"Open Sans\",\"never_see_link_custom_font_family\":\"inherit\",\"never_see_link_font_size\":14,\"never_see_link_font_size_unit\":\"px\",\"never_see_link_font_weight\":\"regular\",\"never_see_link_alignment\":\"center\",\"never_see_link_line_height\":20,\"never_see_link_line_height_unit\":\"px\",\"never_see_link_letter_spacing\":0,\"never_see_link_letter_spacing_unit\":\"px\",\"never_see_link_text_transform\":\"none\",\"never_see_link_text_decoration\":\"none\",\"form_extras_font_family\":\"Open Sans\",\"form_extras_custom_font_family\":\"inherit\",\"form_extras_font_size\":13,\"form_extras_font_size_unit\":\"px\",\"form_extras_font_weight\":\"bold\",\"form_extras_alignment\":\"left\",\"form_extras_line_height\":22,\"form_extras_line_height_unit\":\"px\",\"form_extras_letter_spacing\":0,\"form_extras_letter_spacing_unit\":\"px\",\"form_extras_text_transform\":\"none\",\"form_extras_text_decoration\":\"none\",\"input_font_family\":\"Open Sans\",\"input_custom_font_family\":\"inherit\",\"input_font_size\":13,\"input_font_size_unit\":\"px\",\"input_font_weight\":\"regular\",\"input_alignment\":\"left\",\"input_line_height\":18,\"input_line_height_unit\":\"px\",\"input_letter_spacing\":0,\"input_letter_spacing_unit\":\"px\",\"input_text_transform\":\"none\",\"input_text_decoration\":\"none\",\"select_font_family\":\"Open Sans\",\"select_custom_font_family\":\"inherit\",\"select_font_size\":13,\"select_font_size_unit\":\"px\",\"select_font_weight\":\"regular\",\"select_alignment\":\"left\",\"select_line_height\":18,\"select_line_height_unit\":\"px\",\"select_letter_spacing\":0,\"select_letter_spacing_unit\":\"px\",\"select_text_transform\":\"none\",\"select_text_decoration\":\"\",\"checkbox_font_family\":\"Open Sans\",\"checkbox_custom_font_family\":\"inherit\",\"checkbox_font_size\":12,\"checkbox_font_size_unit\":\"px\",\"checkbox_font_weight\":\"regular\",\"checkbox_alignment\":\"left\",\"checkbox_line_height\":20,\"checkbox_line_height_unit\":\"px\",\"checkbox_letter_spacing\":0,\"checkbox_letter_spacing_unit\":\"px\",\"checkbox_text_transform\":\"none\",\"checkbox_text_decoration\":\"none\",\"dropdown_font_family\":\"Open Sans\",\"dropdown_custom_font_family\":\"inherit\",\"dropdown_font_size\":13,\"dropdown_font_size_unit\":\"px\",\"dropdown_font_weight\":\"regular\",\"dropdown_alignment\":\"left\",\"dropdown_line_height\":18,\"dropdown_line_height_unit\":\"px\",\"dropdown_letter_spacing\":0,\"dropdown_letter_spacing_unit\":\"px\",\"dropdown_text_transform\":\"none\",\"dropdown_text_decoration\":\"none\",\"gdpr_font_family\":\"Open Sans\",\"gdpr_custom_font_family\":\"inherit\",\"gdpr_font_size\":12,\"gdpr_font_size_unit\":\"px\",\"gdpr_font_weight\":\"regular\",\"gdpr_alignment\":\"left\",\"gdpr_line_height\":1.7,\"gdpr_line_height_unit\":\"em\",\"gdpr_letter_spacing\":0,\"gdpr_letter_spacing_unit\":\"px\",\"gdpr_text_transform\":\"none\",\"gdpr_text_decoration\":\"none\",\"recaptcha_font_family\":\"custom\",\"recaptcha_custom_font_family\":\"inherit\",\"recaptcha_font_size\":12,\"recaptcha_font_size_unit\":\"px\",\"recaptcha_font_weight\":\"regular\",\"recaptcha_alignment\":\"left\",\"recaptcha_line_height\":1.7,\"recaptcha_line_height_unit\":\"em\",\"recaptcha_letter_spacing\":-0.25,\"recaptcha_letter_spacing_unit\":\"px\",\"recaptcha_text_transform\":\"none\",\"recaptcha_text_decoration\":\"none\",\"submit_button_font_family\":\"Open Sans\",\"submit_button_custom_font_family\":\"inherit\",\"submit_button_font_size\":13,\"submit_button_font_size_unit\":\"px\",\"submit_button_font_weight\":\"bold\",\"submit_button_line_height\":32,\"submit_button_line_height_unit\":\"px\",\"submit_button_letter_spacing\":0.5,\"submit_button_letter_spacing_unit\":\"px\",\"submit_button_text_transform\":\"none\",\"submit_button_text_decoration\":\"none\",\"success_message_paragraph_font_family\":\"Open Sans\",\"success_message_paragraph_custom_font_family\":\"inherit\",\"success_message_paragraph_font_size\":14,\"success_message_paragraph_font_size_unit\":\"px\",\"success_message_paragraph_font_weight\":\"regular\",\"success_message_paragraph_alignment\":\"left\",\"success_message_paragraph_line_height\":1.45,\"success_message_paragraph_line_height_unit\":\"em\",\"success_message_paragraph_letter_spacing\":0,\"success_message_paragraph_letter_spacing_unit\":\"px\",\"success_message_paragraph_text_transform\":\"none\",\"success_message_paragraph_text_decoration\":\"none\",\"success_message_heading_one_font_family\":\"Open Sans\",\"success_message_heading_one_custom_font_family\":\"inherit\",\"success_message_heading_one_font_size\":28,\"success_message_heading_one_font_size_unit\":\"px\",\"success_message_heading_one_font_weight\":700,\"success_message_heading_one_alignment\":\"left\",\"success_message_heading_one_line_height\":1.4,\"success_message_heading_one_line_height_unit\":\"em\",\"success_message_heading_one_letter_spacing\":0,\"success_message_heading_one_letter_spacing_unit\":\"px\",\"success_message_heading_one_text_transform\":\"none\",\"success_message_heading_one_text_decoration\":\"none\",\"success_message_heading_two_font_family\":\"Open Sans\",\"success_message_heading_two_custom_font_family\":\"inherit\",\"success_message_heading_two_font_size\":22,\"success_message_heading_two_font_size_unit\":\"px\",\"success_message_heading_two_font_weight\":700,\"success_message_heading_two_alignment\":\"left\",\"success_message_heading_two_line_height\":1.4,\"success_message_heading_two_line_height_unit\":\"em\",\"success_message_heading_two_letter_spacing\":0,\"success_message_heading_two_letter_spacing_unit\":\"px\",\"success_message_heading_two_text_transform\":\"none\",\"success_message_heading_two_text_decoration\":\"none\",\"success_message_heading_three_font_family\":\"Open Sans\",\"success_message_heading_three_custom_font_family\":\"inherit\",\"success_message_heading_three_font_size\":18,\"success_message_heading_three_font_size_unit\":\"px\",\"success_message_heading_three_font_weight\":700,\"success_message_heading_three_alignment\":\"left\",\"success_message_heading_three_line_height\":1.4,\"success_message_heading_three_line_height_unit\":\"em\",\"success_message_heading_three_letter_spacing\":0,\"success_message_heading_three_letter_spacing_unit\":\"px\",\"success_message_heading_three_text_transform\":\"none\",\"success_message_heading_three_text_decoration\":\"none\",\"success_message_heading_four_font_family\":\"Open Sans\",\"success_message_heading_four_custom_font_family\":\"inherit\",\"success_message_heading_four_font_size\":16,\"success_message_heading_four_font_size_unit\":\"px\",\"success_message_heading_four_font_weight\":700,\"success_message_heading_four_alignment\":\"left\",\"success_message_heading_four_line_height\":1.4,\"success_message_heading_four_line_height_unit\":\"em\",\"success_message_heading_four_letter_spacing\":0,\"success_message_heading_four_letter_spacing_unit\":\"px\",\"success_message_heading_four_text_transform\":\"none\",\"success_message_heading_four_text_decoration\":\"none\",\"success_message_heading_five_font_family\":\"Open Sans\",\"success_message_heading_five_custom_font_family\":\"inherit\",\"success_message_heading_five_font_size\":14,\"success_message_heading_five_font_size_unit\":\"px\",\"success_message_heading_five_font_weight\":700,\"success_message_heading_five_alignment\":\"left\",\"success_message_heading_five_line_height\":1.4,\"success_message_heading_five_line_height_unit\":\"em\",\"success_message_heading_five_letter_spacing\":0,\"success_message_heading_five_letter_spacing_unit\":\"px\",\"success_message_heading_five_text_transform\":\"none\",\"success_message_heading_five_text_decoration\":\"none\",\"success_message_heading_six_font_family\":\"Open Sans\",\"success_message_heading_six_custom_font_family\":\"inherit\",\"success_message_heading_six_font_size\":12,\"success_message_heading_six_font_size_unit\":\"px\",\"success_message_heading_six_font_weight\":700,\"success_message_heading_six_alignment\":\"left\",\"success_message_heading_six_line_height\":1.4,\"success_message_heading_six_line_height_unit\":\"em\",\"success_message_heading_six_letter_spacing\":0,\"success_message_heading_six_letter_spacing_unit\":\"px\",\"success_message_heading_six_text_transform\":\"uppercase\",\"success_message_heading_six_text_decoration\":\"none\",\"success_message_lists_font_family\":\"Open Sans\",\"success_message_lists_custom_font_family\":\"inherit\",\"success_message_lists_font_size\":14,\"success_message_lists_font_size_unit\":\"px\",\"success_message_lists_font_weight\":\"regular\",\"success_message_lists_alignment\":\"left\",\"success_message_lists_line_height\":1.45,\"success_message_lists_line_height_unit\":\"em\",\"success_message_lists_letter_spacing\":0,\"success_message_lists_letter_spacing_unit\":\"px\",\"success_message_lists_text_transform\":\"none\",\"success_message_lists_text_decoration\":\"none\",\"error_message_font_family\":\"Open Sans\",\"error_message_custom_font_family\":\"inherit\",\"error_message_font_size\":12,\"error_message_font_size_unit\":\"px\",\"error_message_font_weight\":\"regular\",\"error_message_alignment\":\"left\",\"error_message_line_height\":20,\"error_message_line_height_unit\":\"px\",\"error_message_letter_spacing\":0,\"error_message_letter_spacing_unit\":\"px\",\"error_message_text_transform\":\"none\",\"error_message_text_decoration\":\"none\",\"title_font_size_mobile\":\"\",\"title_font_size_unit_mobile\":\"px\",\"title_font_weight_mobile\":700,\"title_alignment_mobile\":\"left\",\"title_line_height_mobile\":\"\",\"title_line_height_unit_mobile\":\"px\",\"title_letter_spacing_mobile\":\"\",\"title_letter_spacing_unit_mobile\":\"px\",\"title_text_transform_mobile\":\"none\",\"title_text_decoration_mobile\":\"none\",\"subtitle_font_size_mobile\":\"\",\"subtitle_font_size_unit_mobile\":\"px\",\"subtitle_font_weight_mobile\":700,\"subtitle_alignment_mobile\":\"left\",\"subtitle_line_height_mobile\":\"\",\"subtitle_line_height_unit_mobile\":\"px\",\"subtitle_letter_spacing_mobile\":\"\",\"subtitle_letter_spacing_unit_mobile\":\"px\",\"subtitle_text_transform_mobile\":\"none\",\"subtitle_text_decoration_mobile\":\"none\",\"main_content_paragraph_font_size_mobile\":\"\",\"main_content_paragraph_font_size_unit_mobile\":\"px\",\"main_content_paragraph_font_weight_mobile\":\"regular\",\"main_content_paragraph_alignment_mobile\":\"left\",\"main_content_paragraph_line_height_mobile\":\"\",\"main_content_paragraph_line_height_unit_mobile\":\"em\",\"main_content_paragraph_letter_spacing_mobile\":\"\",\"main_content_paragraph_letter_spacing_unit_mobile\":\"px\",\"main_content_paragraph_text_transform_mobile\":\"none\",\"main_content_paragraph_text_decoration_mobile\":\"none\",\"main_content_heading_one_font_size_mobile\":\"\",\"main_content_heading_one_font_size_unit_mobile\":\"px\",\"main_content_heading_one_font_weight_mobile\":700,\"main_content_heading_one_alignment_mobile\":\"left\",\"main_content_heading_one_line_height_mobile\":\"\",\"main_content_heading_one_line_height_unit_mobile\":\"em\",\"main_content_heading_one_letter_spacing_mobile\":\"\",\"main_content_heading_one_letter_spacing_unit_mobile\":\"px\",\"main_content_heading_one_text_transform_mobile\":\"none\",\"main_content_heading_one_text_decoration_mobile\":\"none\",\"main_content_heading_two_font_size_mobile\":\"\",\"main_content_heading_two_font_size_unit_mobile\":\"px\",\"main_content_heading_two_font_weight_mobile\":700,\"main_content_heading_two_alignment_mobile\":\"left\",\"main_content_heading_two_line_height_mobile\":\"\",\"main_content_heading_two_line_height_unit_mobile\":\"em\",\"main_content_heading_two_letter_spacing_mobile\":\"\",\"main_content_heading_two_letter_spacing_unit_mobile\":\"px\",\"main_content_heading_two_text_transform_mobile\":\"none\",\"main_content_heading_two_text_decoration_mobile\":\"none\",\"main_content_heading_three_font_size_mobile\":\"\",\"main_content_heading_three_font_size_unit_mobile\":\"px\",\"main_content_heading_three_font_weight_mobile\":700,\"main_content_heading_three_alignment_mobile\":\"left\",\"main_content_heading_three_line_height_mobile\":\"\",\"main_content_heading_three_line_height_unit_mobile\":\"em\",\"main_content_heading_three_letter_spacing_mobile\":\"\",\"main_content_heading_three_letter_spacing_unit_mobile\":\"px\",\"main_content_heading_three_text_transform_mobile\":\"none\",\"main_content_heading_three_text_decoration_mobile\":\"none\",\"main_content_heading_four_font_size_mobile\":\"\",\"main_content_heading_four_font_size_unit_mobile\":\"px\",\"main_content_heading_four_font_weight_mobile\":700,\"main_content_heading_four_alignment_mobile\":\"left\",\"main_content_heading_four_line_height_mobile\":\"\",\"main_content_heading_four_line_height_unit_mobile\":\"em\",\"main_content_heading_four_letter_spacing_mobile\":\"\",\"main_content_heading_four_letter_spacing_unit_mobile\":\"px\",\"main_content_heading_four_text_transform_mobile\":\"none\",\"main_content_heading_four_text_decoration_mobile\":\"none\",\"main_content_heading_five_font_size_mobile\":\"\",\"main_content_heading_five_font_size_unit_mobile\":\"px\",\"main_content_heading_five_font_weight_mobile\":700,\"main_content_heading_five_alignment_mobile\":\"left\",\"main_content_heading_five_line_height_mobile\":\"\",\"main_content_heading_five_line_height_unit_mobile\":\"em\",\"main_content_heading_five_letter_spacing_mobile\":\"\",\"main_content_heading_five_letter_spacing_unit_mobile\":\"px\",\"main_content_heading_five_text_transform_mobile\":\"none\",\"main_content_heading_five_text_decoration_mobile\":\"none\",\"main_content_heading_six_font_size_mobile\":\"\",\"main_content_heading_six_font_size_unit_mobile\":\"px\",\"main_content_heading_six_font_weight_mobile\":700,\"main_content_heading_six_alignment_mobile\":\"left\",\"main_content_heading_six_line_height_mobile\":\"\",\"main_content_heading_six_line_height_unit_mobile\":\"em\",\"main_content_heading_six_letter_spacing_mobile\":\"\",\"main_content_heading_six_letter_spacing_unit_mobile\":\"px\",\"main_content_heading_six_text_transform_mobile\":\"uppercase\",\"main_content_heading_six_text_decoration_mobile\":\"none\",\"main_content_lists_font_size_mobile\":\"\",\"main_content_lists_font_size_unit_mobile\":\"px\",\"main_content_lists_font_weight_mobile\":\"regular\",\"main_content_lists_alignment_mobile\":\"left\",\"main_content_lists_line_height_mobile\":\"\",\"main_content_lists_line_height_unit_mobile\":\"em\",\"main_content_lists_letter_spacing_mobile\":\"\",\"main_content_lists_letter_spacing_unit_mobile\":\"px\",\"main_content_lists_text_transform_mobile\":\"none\",\"main_content_lists_text_decoration_mobile\":\"none\",\"cta_font_size_mobile\":\"\",\"cta_font_size_unit_mobile\":\"px\",\"cta_font_weight_mobile\":\"bold\",\"cta_alignment_mobile\":\"center\",\"cta_line_height_mobile\":\"\",\"cta_line_height_unit_mobile\":\"px\",\"cta_letter_spacing_mobile\":\"\",\"cta_letter_spacing_unit_mobile\":\"px\",\"cta_text_transform_mobile\":\"none\",\"cta_text_decoration_mobile\":\"none\",\"never_see_link_font_size_mobile\":\"\",\"never_see_link_font_size_unit_mobile\":\"px\",\"never_see_link_font_weight_mobile\":\"regular\",\"never_see_link_alignment_mobile\":\"center\",\"never_see_link_line_height_mobile\":\"\",\"never_see_link_line_height_unit_mobile\":\"px\",\"never_see_link_letter_spacing_mobile\":\"\",\"never_see_link_letter_spacing_unit_mobile\":\"px\",\"never_see_link_text_transform_mobile\":\"none\",\"never_see_link_text_decoration_mobile\":\"none\",\"form_extras_font_size_mobile\":\"\",\"form_extras_font_size_unit_mobile\":\"px\",\"form_extras_font_weight_mobile\":\"bold\",\"form_extras_alignment_mobile\":\"left\",\"form_extras_line_height_mobile\":\"\",\"form_extras_line_height_unit_mobile\":\"px\",\"form_extras_letter_spacing_mobile\":\"\",\"form_extras_letter_spacing_unit_mobile\":\"px\",\"form_extras_text_transform_mobile\":\"none\",\"form_extras_text_decoration_mobile\":\"none\",\"input_font_size_mobile\":\"\",\"input_font_size_unit_mobile\":\"px\",\"input_font_weight_mobile\":\"regular\",\"input_alignment_mobile\":\"left\",\"input_line_height_mobile\":\"\",\"input_line_height_unit_mobile\":\"px\",\"input_letter_spacing_mobile\":\"\",\"input_letter_spacing_unit_mobile\":\"px\",\"input_text_transform_mobile\":\"none\",\"input_text_decoration_mobile\":\"none\",\"select_font_size_mobile\":\"\",\"select_font_size_unit_mobile\":\"px\",\"select_font_weight_mobile\":\"regular\",\"select_alignment_mobile\":\"left\",\"select_line_height_mobile\":\"\",\"select_line_height_unit_mobile\":\"px\",\"select_letter_spacing_mobile\":\"\",\"select_letter_spacing_unit_mobile\":\"px\",\"select_text_transform_mobile\":\"none\",\"select_text_decoration_mobile\":\"\",\"checkbox_font_size_mobile\":\"\",\"checkbox_font_size_unit_mobile\":\"px\",\"checkbox_font_weight_mobile\":\"regular\",\"checkbox_alignment_mobile\":\"left\",\"checkbox_line_height_mobile\":\"\",\"checkbox_line_height_unit_mobile\":\"px\",\"checkbox_letter_spacing_mobile\":\"\",\"checkbox_letter_spacing_unit_mobile\":\"px\",\"checkbox_text_transform_mobile\":\"none\",\"checkbox_text_decoration_mobile\":\"none\",\"dropdown_font_size_mobile\":\"\",\"dropdown_font_size_unit_mobile\":\"px\",\"dropdown_font_weight_mobile\":\"regular\",\"dropdown_alignment_mobile\":\"left\",\"dropdown_line_height_mobile\":\"\",\"dropdown_line_height_unit_mobile\":\"px\",\"dropdown_letter_spacing_mobile\":\"\",\"dropdown_letter_spacing_unit_mobile\":\"px\",\"dropdown_text_transform_mobile\":\"none\",\"dropdown_text_decoration_mobile\":\"none\",\"gdpr_font_size_mobile\":\"\",\"gdpr_font_size_unit_mobile\":\"px\",\"gdpr_font_weight_mobile\":\"regular\",\"gdpr_alignment_mobile\":\"left\",\"gdpr_line_height_mobile\":\"\",\"gdpr_line_height_unit_mobile\":\"em\",\"gdpr_letter_spacing_mobile\":\"\",\"gdpr_letter_spacing_unit_mobile\":\"px\",\"gdpr_text_transform_mobile\":\"none\",\"gdpr_text_decoration_mobile\":\"none\",\"recaptcha_font_size_mobile\":\"\",\"recaptcha_font_size_unit_mobile\":\"px\",\"recaptcha_font_weight_mobile\":\"regular\",\"recaptcha_alignment_mobile\":\"left\",\"recaptcha_line_height_mobile\":\"\",\"recaptcha_line_height_unit_mobile\":\"em\",\"recaptcha_letter_spacing_mobile\":\"\",\"recaptcha_letter_spacing_unit_mobile\":\"px\",\"recaptcha_text_transform_mobile\":\"none\",\"recaptcha_text_decoration_mobile\":\"none\",\"submit_button_font_size_mobile\":\"\",\"submit_button_font_size_unit_mobile\":\"px\",\"submit_button_font_weight_mobile\":\"bold\",\"submit_button_line_height_mobile\":\"\",\"submit_button_line_height_unit_mobile\":\"px\",\"submit_button_letter_spacing_mobile\":\"\",\"submit_button_letter_spacing_unit_mobile\":\"px\",\"submit_button_text_transform_mobile\":\"none\",\"submit_button_text_decoration_mobile\":\"none\",\"success_message_paragraph_font_size_mobile\":\"\",\"success_message_paragraph_font_size_unit_mobile\":\"px\",\"success_message_paragraph_font_weight_mobile\":\"regular\",\"success_message_paragraph_alignment_mobile\":\"left\",\"success_message_paragraph_line_height_mobile\":\"\",\"success_message_paragraph_line_height_unit_mobile\":\"em\",\"success_message_paragraph_letter_spacing_mobile\":\"\",\"success_message_paragraph_letter_spacing_unit_mobile\":\"px\",\"success_message_paragraph_text_transform_mobile\":\"none\",\"success_message_paragraph_text_decoration_mobile\":\"none\",\"success_message_heading_one_font_size_mobile\":\"\",\"success_message_heading_one_font_size_unit_mobile\":\"px\",\"success_message_heading_one_font_weight_mobile\":700,\"success_message_heading_one_alignment_mobile\":\"left\",\"success_message_heading_one_line_height_mobile\":\"\",\"success_message_heading_one_line_height_unit_mobile\":\"em\",\"success_message_heading_one_letter_spacing_mobile\":\"\",\"success_message_heading_one_letter_spacing_unit_mobile\":\"px\",\"success_message_heading_one_text_transform_mobile\":\"none\",\"success_message_heading_one_text_decoration_mobile\":\"none\",\"success_message_heading_two_font_size_mobile\":\"\",\"success_message_heading_two_font_size_unit_mobile\":\"px\",\"success_message_heading_two_font_weight_mobile\":700,\"success_message_heading_two_alignment_mobile\":\"left\",\"success_message_heading_two_line_height_mobile\":\"\",\"success_message_heading_two_line_height_unit_mobile\":\"em\",\"success_message_heading_two_letter_spacing_mobile\":\"\",\"success_message_heading_two_letter_spacing_unit_mobile\":\"px\",\"success_message_heading_two_text_transform_mobile\":\"none\",\"success_message_heading_two_text_decoration_mobile\":\"none\",\"success_message_heading_three_font_size_mobile\":\"\",\"success_message_heading_three_font_size_unit_mobile\":\"px\",\"success_message_heading_three_font_weight_mobile\":700,\"success_message_heading_three_alignment_mobile\":\"left\",\"success_message_heading_three_line_height_mobile\":\"\",\"success_message_heading_three_line_height_unit_mobile\":\"em\",\"success_message_heading_three_letter_spacing_mobile\":\"\",\"success_message_heading_three_letter_spacing_unit_mobile\":\"px\",\"success_message_heading_three_text_transform_mobile\":\"none\",\"success_message_heading_three_text_decoration_mobile\":\"none\",\"success_message_heading_four_font_size_mobile\":\"\",\"success_message_heading_four_font_size_unit_mobile\":\"px\",\"success_message_heading_four_font_weight_mobile\":700,\"success_message_heading_four_alignment_mobile\":\"left\",\"success_message_heading_four_line_height_mobile\":\"\",\"success_message_heading_four_line_height_unit_mobile\":\"em\",\"success_message_heading_four_letter_spacing_mobile\":\"\",\"success_message_heading_four_letter_spacing_unit_mobile\":\"px\",\"success_message_heading_four_text_transform_mobile\":\"none\",\"success_message_heading_four_text_decoration_mobile\":\"none\",\"success_message_heading_five_font_size_mobile\":\"\",\"success_message_heading_five_font_size_unit_mobile\":\"px\",\"success_message_heading_five_font_weight_mobile\":700,\"success_message_heading_five_alignment_mobile\":\"left\",\"success_message_heading_five_line_height_mobile\":\"\",\"success_message_heading_five_line_height_unit_mobile\":\"em\",\"success_message_heading_five_letter_spacing_mobile\":\"\",\"success_message_heading_five_letter_spacing_unit_mobile\":\"px\",\"success_message_heading_five_text_transform_mobile\":\"none\",\"success_message_heading_five_text_decoration_mobile\":\"none\",\"success_message_heading_six_font_size_mobile\":\"\",\"success_message_heading_six_font_size_unit_mobile\":\"px\",\"success_message_heading_six_font_weight_mobile\":700,\"success_message_heading_six_alignment_mobile\":\"left\",\"success_message_heading_six_line_height_mobile\":\"\",\"success_message_heading_six_line_height_unit_mobile\":\"em\",\"success_message_heading_six_letter_spacing_mobile\":\"\",\"success_message_heading_six_letter_spacing_unit_mobile\":\"px\",\"success_message_heading_six_text_transform_mobile\":\"uppercase\",\"success_message_heading_six_text_decoration_mobile\":\"none\",\"success_message_lists_font_size_mobile\":\"\",\"success_message_lists_font_size_unit_mobile\":\"px\",\"success_message_lists_font_weight_mobile\":\"regular\",\"success_message_lists_alignment_mobile\":\"left\",\"success_message_lists_line_height_mobile\":\"\",\"success_message_lists_line_height_unit_mobile\":\"em\",\"success_message_lists_letter_spacing_mobile\":\"\",\"success_message_lists_letter_spacing_unit_mobile\":\"px\",\"success_message_lists_text_transform_mobile\":\"none\",\"success_message_lists_text_decoration_mobile\":\"none\",\"error_message_font_size_mobile\":\"\",\"error_message_font_size_unit_mobile\":\"px\",\"error_message_font_weight_mobile\":\"regular\",\"error_message_alignment_mobile\":\"left\",\"error_message_line_height_mobile\":\"\",\"error_message_line_height_unit_mobile\":\"px\",\"error_message_letter_spacing_mobile\":\"\",\"error_message_letter_spacing_unit_mobile\":\"px\",\"error_message_text_transform_mobile\":\"none\",\"error_message_text_decoration_mobile\":\"none\"}');
INSERT INTO `wp_hustle_modules_meta` (`meta_id`, `module_id`, `meta_key`, `meta_value`) VALUES
(5, 1, 'settings', '{\"auto_close_success_message\":\"0\",\"triggers\":{\"trigger\":[\"exit_intent\"],\"on_time_delay\":\"0\",\"on_time_unit\":\"seconds\",\"on_scroll\":\"scrolled\",\"on_scroll_page_percent\":20,\"on_scroll_css_selector\":\"\",\"enable_on_click_element\":\"1\",\"on_click_element\":\"\",\"enable_on_click_shortcode\":\"1\",\"on_exit_intent_per_session\":\"0\",\"on_exit_intent_delayed_time\":\"0.5\",\"on_exit_intent_delayed_unit\":\"seconds\",\"on_adblock_delay\":\"0\",\"on_adblock_delay_unit\":\"seconds\"},\"animation_in\":\"fadeInUp\",\"animation_out\":\"fadeOutDown\",\"after_close_trigger\":[\"click_close_icon\"],\"after_close\":\"no_show_all\",\"expiration\":\"6\",\"expiration_unit\":\"hours\",\"on_submit\":\"nothing\",\"on_submit_delay\":\"5\",\"on_submit_delay_unit\":\"seconds\",\"close_cta\":\"0\",\"close_cta_time\":\"0\",\"close_cta_unit\":\"seconds\",\"hide_after_cta\":\"keep_show\",\"hide_after_subscription\":\"keep_show\",\"is_schedule\":\"0\",\"schedule\":{\"not_schedule_start\":\"1\",\"start_date\":\"03/26/2021\",\"start_hour\":\"12\",\"start_minute\":\"00\",\"start_meridiem_offset\":\"am\",\"not_schedule_end\":\"1\",\"end_date\":\"04/01/2021\",\"end_hour\":\"11\",\"end_minute\":\"59\",\"end_meridiem_offset\":\"pm\",\"active_days\":\"all\",\"week_days\":[],\"is_active_all_day\":\"1\",\"day_start_hour\":\"00\",\"day_start_minute\":\"00\",\"day_start_meridiem_offset\":\"am\",\"day_end_hour\":\"11\",\"day_end_minute\":\"59\",\"day_end_meridiem_offset\":\"pm\",\"time_to_use\":\"server\",\"custom_timezone\":\"UTC\"},\"allow_scroll_page\":\"0\",\"close_on_background_click\":\"0\",\"auto_hide\":\"0\",\"auto_hide_unit\":\"seconds\",\"auto_hide_time\":\"5\"}'),
(6, 1, 'visibility', '{\"conditions\":{\"1786bbde702\":{\"group_id\":\"1786bbde702\",\"show_or_hide_conditions\":\"show\",\"filter_type\":\"all\"}}}'),
(7, 1, 'schedule_flags', '[]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_hustle_tracking`
--

CREATE TABLE `wp_hustle_tracking` (
  `tracking_id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED NOT NULL,
  `module_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_lead_exit`
--

CREATE TABLE `wp_lead_exit` (
  `cd_lead` int(11) NOT NULL,
  `nm_lead` varchar(100) NOT NULL,
  `telefone_lead` varchar(50) NOT NULL,
  `dt_lead` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://arbox.localhost', 'yes'),
(2, 'home', 'http://arbox.localhost', 'yes'),
(3, 'blogname', 'Ar Box', 'yes'),
(4, 'blogdescription', 'Caixas de ar condicionado', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'cicero.vinicius@kbrtec.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', '', 'yes'),
(20, 'default_ping_status', '', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:37:\"acf-options-page/acf-options-page.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:27:\"wordpress-popup/popover.php\";i:3;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'arbox', 'yes'),
(41, 'stylesheet', 'arbox', 'yes'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '49752', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '32', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1629310529', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:69:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:11:\"hustle_menu\";b:1;s:18:\"hustle_edit_module\";b:1;s:13:\"hustle_create\";b:1;s:24:\"hustle_edit_integrations\";b:1;s:20:\"hustle_access_emails\";b:1;s:20:\"hustle_edit_settings\";b:1;s:16:\"hustle_analytics\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:23:\"view_site_health_checks\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'pt_BR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:10:{i:1617225344;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1617226054;a:1:{s:38:\"hustle_general_data_protection_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1617257744;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1617257745;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1617300941;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617300967;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617300970;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617305545;a:2:{s:13:\"wpseo-reindex\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"wpseo_permalink_structure_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617473742;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1614001038;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(149, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(178, 'recently_activated', 'a:0:{}', 'yes'),
(181, 'acf_version', '5.8.12', 'yes'),
(186, 'current_theme', 'Ar Box Theme', 'yes'),
(187, 'theme_mods_arbox', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"nav_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:30;}', 'yes'),
(188, 'theme_switched', '', 'yes'),
(191, 'new_admin_email', 'cicero.vinicius@kbrtec.com.br', 'yes'),
(331, '_transient_health-check-site-status-result', '{\"good\":\"10\",\"recommended\":\"6\",\"critical\":\"4\"}', 'yes'),
(430, 'disallowed_keys', '', 'no'),
(431, 'comment_previously_approved', '1', 'yes'),
(432, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(433, 'auto_update_core_dev', 'enabled', 'yes'),
(434, 'auto_update_core_minor', 'enabled', 'yes'),
(435, 'auto_update_core_major', 'unset', 'yes'),
(436, 'finished_updating_comment_type', '1', 'yes'),
(437, 'db_upgraded', '', 'yes'),
(440, 'can_compress_scripts', '1', 'no'),
(450, 'wpseo', 'a:42:{s:8:\"tracking\";b:0;s:22:\"license_server_version\";i:2;s:15:\"ms_defaults_set\";b:0;s:40:\"ignore_search_engines_discouraged_notice\";b:0;s:19:\"indexing_first_time\";b:1;s:16:\"indexing_started\";b:0;s:15:\"indexing_reason\";s:23:\"home_url_option_changed\";s:29:\"indexables_indexing_completed\";b:1;s:7:\"version\";s:4:\"15.9\";s:16:\"previous_version\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:30:\"enable_headless_rest_endpoints\";b:1;s:17:\"ryte_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:0;s:18:\"first_activated_on\";i:1613569828;s:13:\"myyoast-oauth\";b:0;s:26:\"semrush_integration_active\";b:1;s:14:\"semrush_tokens\";a:0:{}s:20:\"semrush_country_code\";s:2:\"us\";s:19:\"permalink_structure\";s:12:\"/%postname%/\";s:8:\"home_url\";s:22:\"http://arbox.localhost\";s:18:\"dynamic_permalinks\";b:0;s:17:\"category_base_url\";s:0:\"\";s:12:\"tag_base_url\";s:0:\"\";s:21:\"custom_taxonomy_slugs\";a:0:{}s:29:\"enable_enhanced_slack_sharing\";b:1;s:25:\"zapier_integration_active\";b:0;s:19:\"zapier_subscription\";a:0:{}s:14:\"zapier_api_key\";s:0:\"\";}', 'yes'),
(451, 'yoast_migrations_free', 'a:1:{s:7:\"version\";s:4:\"15.9\";}', 'yes'),
(452, 'wpseo_titles', 'a:76:{s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:0:\"\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:0:\"\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:0:\"\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:0:\"\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:0:\"\";s:15:\"breadcrumbs-sep\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:21:\"schema-page-type-post\";s:7:\"WebPage\";s:24:\"schema-article-type-post\";s:7:\"Article\";s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:21:\"schema-page-type-page\";s:7:\"WebPage\";s:24:\"schema-article-type-page\";s:4:\"None\";s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:27:\"schema-page-type-attachment\";s:7:\"WebPage\";s:30:\"schema-article-type-attachment\";s:4:\"None\";s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:26:\"taxonomy-category-ptparent\";b:0;s:26:\"taxonomy-post_tag-ptparent\";b:0;s:29:\"taxonomy-post_format-ptparent\";b:0;}', 'yes'),
(453, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";}', 'yes'),
(454, 'wpseo_flush_rewrite', '1', 'yes'),
(466, 'wpseo_ryte', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1614713554;}', 'yes'),
(528, 'rewrite_rules', 'a:97:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=32&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(623, '_site_transient_timeout_browser_0dfb3ef9c1b48f7db77c2e3064864c91', '1617305525', 'no'),
(624, '_site_transient_browser_0dfb3ef9c1b48f7db77c2e3064864c91', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.190\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(659, 'hustle_activated_flag', '1', 'yes'),
(660, 'hustle_database_version', '4.0', 'yes'),
(661, 'hustle_version', '4.4.3', 'yes'),
(662, 'widget_hustle_module_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(663, 'widget_inc_opt_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(666, 'hustle_notice_stop_support_m2', 'a:0:{}', 'yes'),
(667, 'hustle_migrations', 'a:2:{i:0;s:18:\"hustle_40_migrated\";i:1;s:19:\"hustle_430_migrated\";}', 'yes'),
(668, 'hustle_430_modules_to_migrate', 'a:0:{}', 'no'),
(669, 'wdev-frash', 'a:3:{s:7:\"plugins\";a:1:{s:50:\"wordpress-popup/inc/class-hustle-notifications.php\";i:1616714857;}s:5:\"queue\";a:2:{s:32:\"e8a05f067e20f5e764165feed3d9e765\";a:3:{s:6:\"plugin\";s:50:\"wordpress-popup/inc/class-hustle-notifications.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1616714857;}s:32:\"cadb80b8069fa163eac11e39f46e65d1\";a:3:{s:6:\"plugin\";s:50:\"wordpress-popup/inc/class-hustle-notifications.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1617319657;}}s:4:\"done\";a:0:{}}', 'no'),
(672, 'auto_update_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'no'),
(673, 'wpmudev_recommended_plugins_registered', 'a:1:{s:27:\"wordpress-popup/popover.php\";a:1:{s:13:\"registered_at\";i:1616714980;}}', 'no'),
(716, '_transient_timeout_acf_plugin_updates', '1617282659', 'no'),
(717, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.8.12\";}}', 'no'),
(725, '_site_transient_timeout_php_check_b3655adab148a1a6c8391bd3893ea554', '1617714675', 'no'),
(726, '_site_transient_php_check_b3655adab148a1a6c8391bd3893ea554', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(737, '_site_transient_timeout_browser_72766ab2b1c85af98adbbb9683600fdf', '1617714727', 'no'),
(738, '_site_transient_browser_72766ab2b1c85af98adbbb9683600fdf', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"89.0.4389.90\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(808, '_transient_timeout_wpseo_total_unindexed_posts', '1617301894', 'no'),
(810, '_transient_wpseo_total_unindexed_posts', '0', 'no'),
(814, '_transient_timeout_wpseo_total_unindexed_terms', '1617301896', 'no'),
(815, '_transient_wpseo_total_unindexed_terms', '0', 'no'),
(822, '_transient_timeout_wpseo_total_unindexed_post_type_archives', '1617301900', 'no'),
(823, '_transient_timeout_wpseo_unindexed_post_link_count', '1617301900', 'no'),
(826, '_transient_wpseo_total_unindexed_post_type_archives', '0', 'no'),
(827, '_transient_wpseo_unindexed_post_link_count', '0', 'no'),
(830, '_transient_timeout_wpseo_unindexed_term_link_count', '1617301902', 'no'),
(832, '_transient_wpseo_unindexed_term_link_count', '0', 'no'),
(838, '_site_transient_timeout_theme_roots', '1617217306', 'no'),
(839, '_site_transient_theme_roots', 'a:2:{s:5:\"arbox\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(842, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1617215515;s:15:\"version_checked\";s:5:\"5.6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(843, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1617215516;s:7:\"checked\";a:2:{s:5:\"arbox\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.1\";}s:8:\"response\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(844, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1617215516;s:8:\"response\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:6:\"16.0.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wordpress-seo.16.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2363699\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:3:\"5.7\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:15:\"wordpress-popup\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"7.4.3\";s:7:\"updated\";s:19:\"2021-01-11 14:50:41\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/translation/plugin/wordpress-popup/7.4.3/pt_BR.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:13:\"wordpress-seo\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:4:\"15.9\";s:7:\"updated\";s:19:\"2020-10-05 23:36:57\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/wordpress-seo/15.9/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wordpress-popup/popover.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/wordpress-popup\";s:4:\"slug\";s:15:\"wordpress-popup\";s:6:\"plugin\";s:27:\"wordpress-popup/popover.php\";s:11:\"new_version\";s:5:\"7.4.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/wordpress-popup/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wordpress-popup.7.4.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-popup/assets/icon-128x128.gif?rev=2459217\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-popup/assets/banner-1544x500.png?rev=2369052\";s:2:\"1x\";s:70:\"https://ps.w.org/wordpress-popup/assets/banner-772x250.png?rev=2369052\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(848, '_site_transient_timeout_available_translations', '1617230809', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(849, '_site_transient_available_translations', 'a:126:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-21 11:40:46\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-18 17:27:24\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.15\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.15/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-25 04:24:38\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.16\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.16/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2020-07-01 06:36:01\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.4/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-14 15:12:05\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-30 07:52:03\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-14 15:54:55\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-02 14:47:38\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-27 08:06:01\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-12-08 15:56:22\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-08 12:02:28\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.6.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-08 12:02:11\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-16 12:45:44\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.6.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-16 12:44:39\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-28 20:08:08\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-28 21:05:55\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-04 02:03:48\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-17 12:08:18\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-04 02:04:05\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-04 02:03:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-28 20:18:55\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-01 09:21:22\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-05 01:34:05\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-12-05 04:02:03\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-29 06:18:55\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-29 06:18:30\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-04 14:20:12\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2019-11-12 04:43:11\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.4/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.4/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"5.2.9\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.9/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-17 22:31:31\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-28 21:52:43\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-12-11 02:12:59\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-29 06:19:16\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-08-12 08:33:42\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-11 07:19:40\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-16 00:11:17\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-16 17:58:14\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-29 05:20:40\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-24 19:13:55\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-02 16:39:19\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-02 16:45:05\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.15\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.15/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-08 11:08:28\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.16\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.16/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.24\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.24/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-03 22:52:15\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-13 18:50:45\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-28 20:08:42\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-29 22:13:42\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-03 06:49:47\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.16\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.16/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-10 09:50:12\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-03 10:20:43\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.16\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.16/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-31 07:30:44\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-12-10 23:41:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.16\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.16/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.2.9\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.9/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.16\";s:7:\"updated\";s:19:\"2020-09-30 14:08:59\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.16/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-29 22:38:02\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-13 20:53:40\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-11 10:59:25\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-19 19:28:36\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2020-07-01 09:16:57\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.4.4/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.16\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.16/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"4.9.16\";s:7:\"updated\";s:19:\"2018-08-31 11:57:07\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.16/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.29\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.29/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-03 01:15:58\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"5.2.9\";s:7:\"updated\";s:19:\"2020-05-31 16:07:59\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.9/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-06 07:52:53\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-17 05:52:50\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-06 08:03:07\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.6.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-19 20:02:28\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.15\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.15/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-18 09:05:26\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.25\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.25/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-05 15:31:08\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-12-07 22:41:07\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.6.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-16 17:36:06\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-12-08 14:21:04\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-24 11:54:31\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-08 12:25:00\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.4/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-19 14:49:39\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-09-13 06:50:55\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.6.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"5.1.8\";s:7:\"updated\";s:19:\"2019-04-30 13:03:56\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.8/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-31 10:15:23\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-12-08 22:55:51\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-10 16:26:39\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.3.6\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.3.6/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.29\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.29/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.5.3\";s:7:\"updated\";s:19:\"2021-02-24 06:46:42\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.5.3/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.15\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.15/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-08 19:38:25\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.16\";s:7:\"updated\";s:19:\"2018-05-16 07:36:13\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.16/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-20 16:53:47\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.4.4\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.4.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-01-21 19:58:14\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-02-21 15:48:34\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.6.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-19 08:35:21\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2021-03-25 06:32:40\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.6.2\";s:7:\"updated\";s:19:\"2020-12-04 16:53:37\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.6.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'https://www.arboxcaixas.com.br/'),
(12, 6, '_menu_item_type', 'custom'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '6'),
(15, 6, '_menu_item_object', 'custom'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', 'https://www.arboxcaixas.com.br/produto'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', 'https://www.arboxcaixas.com.br/blog/1/0/Blog'),
(30, 8, '_menu_item_type', 'custom'),
(31, 8, '_menu_item_menu_item_parent', '0'),
(32, 8, '_menu_item_object_id', '8'),
(33, 8, '_menu_item_object', 'custom'),
(34, 8, '_menu_item_target', ''),
(35, 8, '_menu_item_classes', 'a:3:{i:0;s:3:\"btn\";i:1;s:13:\"btn-orcamento\";i:2;s:6:\"anchor\";}'),
(36, 8, '_menu_item_xfn', ''),
(37, 8, '_menu_item_url', 'http://arbox.localhost/#rodape'),
(43, 11, '_edit_last', '1'),
(44, 11, '_edit_lock', '1617128471:1'),
(119, 27, '_wp_attached_file', '2021/02/predio-caixa-de-ar-condicionado-ar-box.jpg'),
(120, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:929;s:4:\"file\";s:50:\"2021/02/predio-caixa-de-ar-condicionado-ar-box.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"predio-caixa-de-ar-condicionado-ar-box-300x145.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:145;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"predio-caixa-de-ar-condicionado-ar-box-1024x495.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:495;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"predio-caixa-de-ar-condicionado-ar-box-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"predio-caixa-de-ar-condicionado-ar-box-768x372.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:51:\"predio-caixa-de-ar-condicionado-ar-box-1536x743.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:743;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 29, '_wp_attached_file', '2021/02/ar-box-caixas-de-ar-condicionado-logo.png'),
(172, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:211;s:6:\"height\";i:81;s:4:\"file\";s:49:\"2021/02/ar-box-caixas-de-ar-condicionado-logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"ar-box-caixas-de-ar-condicionado-logo-150x81.png\";s:5:\"width\";i:150;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(173, 30, '_wp_attached_file', '2021/02/cropped-ar-box-caixas-de-ar-condicionado-logo.png'),
(174, 30, '_wp_attachment_context', 'custom-logo'),
(175, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:211;s:6:\"height\";i:81;s:4:\"file\";s:57:\"2021/02/cropped-ar-box-caixas-de-ar-condicionado-logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"cropped-ar-box-caixas-de-ar-condicionado-logo-150x81.png\";s:5:\"width\";i:150;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(179, 32, '_edit_last', '1'),
(180, 32, '_wp_page_template', 'templates/page-home.php'),
(181, 32, '_edit_lock', '1617224381:1'),
(185, 32, 'topo_video', ''),
(186, 32, '_topo_video', 'field_6033b0aee8ae6'),
(187, 32, 'topo_imagem', '27'),
(188, 32, '_topo_imagem', 'field_6033b0f1e8ae7'),
(189, 32, 'topo_titulo', 'Caixa de Alumínio <br/>para Ar Condicionado'),
(190, 32, '_topo_titulo', 'field_6033ab7b2b5de'),
(191, 32, 'topo_subtitulo', 'Ultra resistente e design moderno. Revitalize a fachada do seu prédio com a Ar Box Caixas.'),
(192, 32, '_topo_subtitulo', 'field_6033ac4f2b5df'),
(193, 32, 'topo_botao_texto_do_botao', 'Orçamento Caixa de Alumínio'),
(194, 32, '_topo_botao_texto_do_botao', 'field_6033acef2b5e1'),
(195, 32, 'topo_botao_link_url', 'http://ambiente-desenvolvimento7.provisorio.ws/'),
(196, 32, '_topo_botao_link_url', 'field_6033ad072b5e2'),
(197, 32, 'topo_botao', ''),
(198, 32, '_topo_botao', 'field_6033ac682b5e0'),
(199, 32, 'topo_produtos_produto_0_imagem', ''),
(200, 32, '_topo_produtos_produto_0_imagem', 'field_6033ae0f2b5e5'),
(201, 32, 'topo_produtos_produto_0_tipo_nome', 'Ar condicionado de janela'),
(202, 32, '_topo_produtos_produto_0_tipo_nome', 'field_6033aed62b5e6'),
(203, 32, 'topo_produtos_produto_0_subtitulo', 'até 30.000 Btus'),
(204, 32, '_topo_produtos_produto_0_subtitulo', 'field_6033af622b5e7'),
(205, 32, 'topo_produtos_produto_1_imagem', ''),
(206, 32, '_topo_produtos_produto_1_imagem', 'field_6033ae0f2b5e5'),
(207, 32, 'topo_produtos_produto_1_tipo_nome', 'Ar condicionado tipo split'),
(208, 32, '_topo_produtos_produto_1_tipo_nome', 'field_6033aed62b5e6'),
(209, 32, 'topo_produtos_produto_1_subtitulo', 'até 30.000 Btus'),
(210, 32, '_topo_produtos_produto_1_subtitulo', 'field_6033af622b5e7'),
(211, 32, 'topo_produtos_produto_2_imagem', ''),
(212, 32, '_topo_produtos_produto_2_imagem', 'field_6033ae0f2b5e5'),
(213, 32, 'topo_produtos_produto_2_tipo_nome', 'Acima de 30.000 BTUS'),
(214, 32, '_topo_produtos_produto_2_tipo_nome', 'field_6033aed62b5e6'),
(215, 32, 'topo_produtos_produto_2_subtitulo', 'Sob consulta'),
(216, 32, '_topo_produtos_produto_2_subtitulo', 'field_6033af622b5e7'),
(217, 32, 'topo_produtos_produto', '3'),
(218, 32, '_topo_produtos_produto', 'field_6033adf92b5e4'),
(219, 32, 'topo_produtos', ''),
(220, 32, '_topo_produtos', 'field_6033ad872b5e3'),
(221, 32, 'topo', ''),
(222, 32, '_topo', 'field_6033aff0e8ae5'),
(223, 35, 'topo_video', ''),
(224, 35, '_topo_video', 'field_6033b0aee8ae6'),
(225, 35, 'topo_imagem', '27'),
(226, 35, '_topo_imagem', 'field_6033b0f1e8ae7'),
(227, 35, 'topo_titulo', 'Caixa de Alumínio <br/>para Ar Condicionado'),
(228, 35, '_topo_titulo', 'field_6033ab7b2b5de'),
(229, 35, 'topo_subtitulo', 'Ultra resistente e design moderno. Revitalize a fachada do seu prédio com a Ar Box Caixas.'),
(230, 35, '_topo_subtitulo', 'field_6033ac4f2b5df'),
(231, 35, 'topo_botao_texto_do_botao', 'Orçamento Caixa de Alumínio'),
(232, 35, '_topo_botao_texto_do_botao', 'field_6033acef2b5e1'),
(233, 35, 'topo_botao_link_url', 'http://ambiente-desenvolvimento7.provisorio.ws/'),
(234, 35, '_topo_botao_link_url', 'field_6033ad072b5e2'),
(235, 35, 'topo_botao', ''),
(236, 35, '_topo_botao', 'field_6033ac682b5e0'),
(237, 35, 'topo_produtos_produto_0_imagem', ''),
(238, 35, '_topo_produtos_produto_0_imagem', 'field_6033ae0f2b5e5'),
(239, 35, 'topo_produtos_produto_0_tipo_nome', 'Ar condicionado de janela'),
(240, 35, '_topo_produtos_produto_0_tipo_nome', 'field_6033aed62b5e6'),
(241, 35, 'topo_produtos_produto_0_subtitulo', 'até 30.000 Btus'),
(242, 35, '_topo_produtos_produto_0_subtitulo', 'field_6033af622b5e7'),
(243, 35, 'topo_produtos_produto_1_imagem', ''),
(244, 35, '_topo_produtos_produto_1_imagem', 'field_6033ae0f2b5e5'),
(245, 35, 'topo_produtos_produto_1_tipo_nome', 'Ar condicionado tipo split'),
(246, 35, '_topo_produtos_produto_1_tipo_nome', 'field_6033aed62b5e6'),
(247, 35, 'topo_produtos_produto_1_subtitulo', 'até 30.000 Btus'),
(248, 35, '_topo_produtos_produto_1_subtitulo', 'field_6033af622b5e7'),
(249, 35, 'topo_produtos_produto_2_imagem', ''),
(250, 35, '_topo_produtos_produto_2_imagem', 'field_6033ae0f2b5e5'),
(251, 35, 'topo_produtos_produto_2_tipo_nome', 'Acima de 30.000 BTUS'),
(252, 35, '_topo_produtos_produto_2_tipo_nome', 'field_6033aed62b5e6'),
(253, 35, 'topo_produtos_produto_2_subtitulo', 'Sob consulta'),
(254, 35, '_topo_produtos_produto_2_subtitulo', 'field_6033af622b5e7'),
(255, 35, 'topo_produtos_produto', '3'),
(256, 35, '_topo_produtos_produto', 'field_6033adf92b5e4'),
(257, 35, 'topo_produtos', ''),
(258, 35, '_topo_produtos', 'field_6033ad872b5e3'),
(259, 35, 'topo', ''),
(260, 35, '_topo', 'field_6033aff0e8ae5'),
(261, 40, '_edit_last', '1'),
(262, 40, '_wp_page_template', 'templates/page-whatsapp.php'),
(263, 40, '_edit_lock', '1614632753:1'),
(264, 42, '_edit_last', '1'),
(265, 42, '_edit_lock', '1614693440:1'),
(266, 42, '_wp_page_template', 'templates/page-obrigado-whatsapp.php'),
(267, 44, '_edit_last', '1'),
(268, 44, '_edit_lock', '1614738105:1'),
(269, 44, '_wp_page_template', 'templates/page-obrigado-formulario.php'),
(270, 46, '_edit_last', '1'),
(271, 46, '_wp_page_template', 'templates/page-obrigado-meligue.php'),
(272, 46, '_edit_lock', '1614706451:1'),
(273, 48, '_edit_last', '1'),
(274, 48, '_edit_lock', '1614705960:1'),
(275, 48, '_wp_page_template', 'templates/page-lead-exit.php'),
(276, 50, '_edit_last', '1'),
(277, 50, '_wp_page_template', 'templates/page-envio-contato.php'),
(278, 50, '_edit_lock', '1617127893:1'),
(279, 32, '_yoast_wpseo_focuskw', 'ar condicionado'),
(280, 32, '_yoast_wpseo_metadesc', 'As caixas de ar condicionado da Ar Box com design sofisticado que visa amenizar os impactos causados pelo ar condicionado, unindo a estética e a facilidade de instalação e manutenção dos aparelhos de ar condicionados.'),
(281, 32, '_yoast_wpseo_linkdex', '35'),
(282, 32, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(283, 53, 'topo_video', ''),
(284, 53, '_topo_video', 'field_6033b0aee8ae6'),
(285, 53, 'topo_imagem', '27'),
(286, 53, '_topo_imagem', 'field_6033b0f1e8ae7'),
(287, 53, 'topo_titulo', 'Caixa de Alumínio <br/>para Ar Condicionado'),
(288, 53, '_topo_titulo', 'field_6033ab7b2b5de'),
(289, 53, 'topo_subtitulo', 'Ultra resistente e design moderno. Revitalize a fachada do seu prédio com a Ar Box Caixas.'),
(290, 53, '_topo_subtitulo', 'field_6033ac4f2b5df'),
(291, 53, 'topo_botao_texto_do_botao', 'Orçamento Caixa de Alumínio'),
(292, 53, '_topo_botao_texto_do_botao', 'field_6033acef2b5e1'),
(293, 53, 'topo_botao_link_url', 'http://ambiente-desenvolvimento7.provisorio.ws/'),
(294, 53, '_topo_botao_link_url', 'field_6033ad072b5e2'),
(295, 53, 'topo_botao', ''),
(296, 53, '_topo_botao', 'field_6033ac682b5e0'),
(297, 53, 'topo_produtos_produto_0_imagem', ''),
(298, 53, '_topo_produtos_produto_0_imagem', 'field_6033ae0f2b5e5'),
(299, 53, 'topo_produtos_produto_0_tipo_nome', 'Ar condicionado de janela'),
(300, 53, '_topo_produtos_produto_0_tipo_nome', 'field_6033aed62b5e6'),
(301, 53, 'topo_produtos_produto_0_subtitulo', 'até 30.000 Btus'),
(302, 53, '_topo_produtos_produto_0_subtitulo', 'field_6033af622b5e7'),
(303, 53, 'topo_produtos_produto_1_imagem', ''),
(304, 53, '_topo_produtos_produto_1_imagem', 'field_6033ae0f2b5e5'),
(305, 53, 'topo_produtos_produto_1_tipo_nome', 'Ar condicionado tipo split'),
(306, 53, '_topo_produtos_produto_1_tipo_nome', 'field_6033aed62b5e6'),
(307, 53, 'topo_produtos_produto_1_subtitulo', 'até 30.000 Btus'),
(308, 53, '_topo_produtos_produto_1_subtitulo', 'field_6033af622b5e7'),
(309, 53, 'topo_produtos_produto_2_imagem', ''),
(310, 53, '_topo_produtos_produto_2_imagem', 'field_6033ae0f2b5e5'),
(311, 53, 'topo_produtos_produto_2_tipo_nome', 'Acima de 30.000 BTUS'),
(312, 53, '_topo_produtos_produto_2_tipo_nome', 'field_6033aed62b5e6'),
(313, 53, 'topo_produtos_produto_2_subtitulo', 'Sob consulta'),
(314, 53, '_topo_produtos_produto_2_subtitulo', 'field_6033af622b5e7'),
(315, 53, 'topo_produtos_produto', '3'),
(316, 53, '_topo_produtos_produto', 'field_6033adf92b5e4'),
(317, 53, 'topo_produtos', ''),
(318, 53, '_topo_produtos', 'field_6033ad872b5e3'),
(319, 53, 'topo', ''),
(320, 53, '_topo', 'field_6033aff0e8ae5'),
(321, 55, '_menu_item_type', 'custom'),
(322, 55, '_menu_item_menu_item_parent', '0'),
(323, 55, '_menu_item_object_id', '55'),
(324, 55, '_menu_item_object', 'custom'),
(325, 55, '_menu_item_target', ''),
(326, 55, '_menu_item_classes', 'a:1:{i:0;s:10:\"open-ebook\";}'),
(327, 55, '_menu_item_xfn', ''),
(328, 55, '_menu_item_url', '#'),
(330, 58, '_wp_attached_file', '2021/03/arbox.pdf'),
(331, 32, 'topo_ebook', '58'),
(332, 32, '_topo_ebook', 'field_6063385335753'),
(333, 59, 'topo_video', ''),
(334, 59, '_topo_video', 'field_6033b0aee8ae6'),
(335, 59, 'topo_imagem', '27'),
(336, 59, '_topo_imagem', 'field_6033b0f1e8ae7'),
(337, 59, 'topo_titulo', 'Caixa de Alumínio <br/>para Ar Condicionado'),
(338, 59, '_topo_titulo', 'field_6033ab7b2b5de'),
(339, 59, 'topo_subtitulo', 'Ultra resistente e design moderno. Revitalize a fachada do seu prédio com a Ar Box Caixas.'),
(340, 59, '_topo_subtitulo', 'field_6033ac4f2b5df'),
(341, 59, 'topo_botao_texto_do_botao', 'Orçamento Caixa de Alumínio'),
(342, 59, '_topo_botao_texto_do_botao', 'field_6033acef2b5e1'),
(343, 59, 'topo_botao_link_url', 'http://ambiente-desenvolvimento7.provisorio.ws/'),
(344, 59, '_topo_botao_link_url', 'field_6033ad072b5e2'),
(345, 59, 'topo_botao', ''),
(346, 59, '_topo_botao', 'field_6033ac682b5e0'),
(347, 59, 'topo_produtos_produto_0_imagem', ''),
(348, 59, '_topo_produtos_produto_0_imagem', 'field_6033ae0f2b5e5'),
(349, 59, 'topo_produtos_produto_0_tipo_nome', 'Ar condicionado de janela'),
(350, 59, '_topo_produtos_produto_0_tipo_nome', 'field_6033aed62b5e6'),
(351, 59, 'topo_produtos_produto_0_subtitulo', 'até 30.000 Btus'),
(352, 59, '_topo_produtos_produto_0_subtitulo', 'field_6033af622b5e7'),
(353, 59, 'topo_produtos_produto_1_imagem', ''),
(354, 59, '_topo_produtos_produto_1_imagem', 'field_6033ae0f2b5e5'),
(355, 59, 'topo_produtos_produto_1_tipo_nome', 'Ar condicionado tipo split'),
(356, 59, '_topo_produtos_produto_1_tipo_nome', 'field_6033aed62b5e6'),
(357, 59, 'topo_produtos_produto_1_subtitulo', 'até 30.000 Btus'),
(358, 59, '_topo_produtos_produto_1_subtitulo', 'field_6033af622b5e7'),
(359, 59, 'topo_produtos_produto_2_imagem', ''),
(360, 59, '_topo_produtos_produto_2_imagem', 'field_6033ae0f2b5e5'),
(361, 59, 'topo_produtos_produto_2_tipo_nome', 'Acima de 30.000 BTUS'),
(362, 59, '_topo_produtos_produto_2_tipo_nome', 'field_6033aed62b5e6'),
(363, 59, 'topo_produtos_produto_2_subtitulo', 'Sob consulta'),
(364, 59, '_topo_produtos_produto_2_subtitulo', 'field_6033af622b5e7'),
(365, 59, 'topo_produtos_produto', '3'),
(366, 59, '_topo_produtos_produto', 'field_6033adf92b5e4'),
(367, 59, 'topo_produtos', ''),
(368, 59, '_topo_produtos', 'field_6033ad872b5e3'),
(369, 59, 'topo', ''),
(370, 59, '_topo', 'field_6033aff0e8ae5'),
(371, 59, 'topo_ebook', '58'),
(372, 59, '_topo_ebook', 'field_6063385335753'),
(373, 62, '_edit_last', '1'),
(374, 62, '_edit_lock', '1617128177:1'),
(375, 62, '_wp_page_template', 'templates/page-envio-ebook.php'),
(376, 62, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(377, 65, '_edit_last', '1'),
(378, 65, '_edit_lock', '1617128758:1'),
(379, 32, 'ebook', '72'),
(380, 32, '_ebook', 'field_60636bf7ae8ef'),
(381, 67, 'topo_video', ''),
(382, 67, '_topo_video', 'field_6033b0aee8ae6'),
(383, 67, 'topo_imagem', '27'),
(384, 67, '_topo_imagem', 'field_6033b0f1e8ae7'),
(385, 67, 'topo_titulo', 'Caixa de Alumínio <br/>para Ar Condicionado'),
(386, 67, '_topo_titulo', 'field_6033ab7b2b5de'),
(387, 67, 'topo_subtitulo', 'Ultra resistente e design moderno. Revitalize a fachada do seu prédio com a Ar Box Caixas.'),
(388, 67, '_topo_subtitulo', 'field_6033ac4f2b5df'),
(389, 67, 'topo_botao_texto_do_botao', 'Orçamento Caixa de Alumínio'),
(390, 67, '_topo_botao_texto_do_botao', 'field_6033acef2b5e1'),
(391, 67, 'topo_botao_link_url', 'http://ambiente-desenvolvimento7.provisorio.ws/'),
(392, 67, '_topo_botao_link_url', 'field_6033ad072b5e2'),
(393, 67, 'topo_botao', ''),
(394, 67, '_topo_botao', 'field_6033ac682b5e0'),
(395, 67, 'topo_produtos_produto_0_imagem', ''),
(396, 67, '_topo_produtos_produto_0_imagem', 'field_6033ae0f2b5e5'),
(397, 67, 'topo_produtos_produto_0_tipo_nome', 'Ar condicionado de janela'),
(398, 67, '_topo_produtos_produto_0_tipo_nome', 'field_6033aed62b5e6'),
(399, 67, 'topo_produtos_produto_0_subtitulo', 'até 30.000 Btus'),
(400, 67, '_topo_produtos_produto_0_subtitulo', 'field_6033af622b5e7'),
(401, 67, 'topo_produtos_produto_1_imagem', ''),
(402, 67, '_topo_produtos_produto_1_imagem', 'field_6033ae0f2b5e5'),
(403, 67, 'topo_produtos_produto_1_tipo_nome', 'Ar condicionado tipo split'),
(404, 67, '_topo_produtos_produto_1_tipo_nome', 'field_6033aed62b5e6'),
(405, 67, 'topo_produtos_produto_1_subtitulo', 'até 30.000 Btus'),
(406, 67, '_topo_produtos_produto_1_subtitulo', 'field_6033af622b5e7'),
(407, 67, 'topo_produtos_produto_2_imagem', ''),
(408, 67, '_topo_produtos_produto_2_imagem', 'field_6033ae0f2b5e5'),
(409, 67, 'topo_produtos_produto_2_tipo_nome', 'Acima de 30.000 BTUS'),
(410, 67, '_topo_produtos_produto_2_tipo_nome', 'field_6033aed62b5e6'),
(411, 67, 'topo_produtos_produto_2_subtitulo', 'Sob consulta'),
(412, 67, '_topo_produtos_produto_2_subtitulo', 'field_6033af622b5e7'),
(413, 67, 'topo_produtos_produto', '3'),
(414, 67, '_topo_produtos_produto', 'field_6033adf92b5e4'),
(415, 67, 'topo_produtos', ''),
(416, 67, '_topo_produtos', 'field_6033ad872b5e3'),
(417, 67, 'topo', ''),
(418, 67, '_topo', 'field_6033aff0e8ae5'),
(419, 67, 'topo_ebook', '58'),
(420, 67, '_topo_ebook', 'field_6063385335753'),
(421, 67, 'ebook', '58'),
(422, 67, '_ebook', 'field_60636bf7ae8ef'),
(423, 68, '_edit_last', '1'),
(424, 68, '_edit_lock', '1617129808:1'),
(425, 68, '_wp_page_template', 'templates/baixar-ebook.php'),
(426, 68, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(427, 70, '_edit_last', '1'),
(428, 70, '_edit_lock', '1617135919:1'),
(429, 70, '_wp_page_template', 'templates/page-obrigado-ebook.php'),
(430, 70, '_yoast_wpseo_estimated-reading-time-minutes', ''),
(431, 72, '_wp_attached_file', '2021/03/E-book-Ar-Box-1.pdf'),
(432, 73, 'topo_video', ''),
(433, 73, '_topo_video', 'field_6033b0aee8ae6'),
(434, 73, 'topo_imagem', '27'),
(435, 73, '_topo_imagem', 'field_6033b0f1e8ae7'),
(436, 73, 'topo_titulo', 'Caixa de Alumínio <br/>para Ar Condicionado'),
(437, 73, '_topo_titulo', 'field_6033ab7b2b5de'),
(438, 73, 'topo_subtitulo', 'Ultra resistente e design moderno. Revitalize a fachada do seu prédio com a Ar Box Caixas.'),
(439, 73, '_topo_subtitulo', 'field_6033ac4f2b5df'),
(440, 73, 'topo_botao_texto_do_botao', 'Orçamento Caixa de Alumínio'),
(441, 73, '_topo_botao_texto_do_botao', 'field_6033acef2b5e1'),
(442, 73, 'topo_botao_link_url', 'http://ambiente-desenvolvimento7.provisorio.ws/'),
(443, 73, '_topo_botao_link_url', 'field_6033ad072b5e2'),
(444, 73, 'topo_botao', ''),
(445, 73, '_topo_botao', 'field_6033ac682b5e0'),
(446, 73, 'topo_produtos_produto_0_imagem', ''),
(447, 73, '_topo_produtos_produto_0_imagem', 'field_6033ae0f2b5e5'),
(448, 73, 'topo_produtos_produto_0_tipo_nome', 'Ar condicionado de janela'),
(449, 73, '_topo_produtos_produto_0_tipo_nome', 'field_6033aed62b5e6'),
(450, 73, 'topo_produtos_produto_0_subtitulo', 'até 30.000 Btus'),
(451, 73, '_topo_produtos_produto_0_subtitulo', 'field_6033af622b5e7'),
(452, 73, 'topo_produtos_produto_1_imagem', ''),
(453, 73, '_topo_produtos_produto_1_imagem', 'field_6033ae0f2b5e5'),
(454, 73, 'topo_produtos_produto_1_tipo_nome', 'Ar condicionado tipo split'),
(455, 73, '_topo_produtos_produto_1_tipo_nome', 'field_6033aed62b5e6'),
(456, 73, 'topo_produtos_produto_1_subtitulo', 'até 30.000 Btus'),
(457, 73, '_topo_produtos_produto_1_subtitulo', 'field_6033af622b5e7'),
(458, 73, 'topo_produtos_produto_2_imagem', ''),
(459, 73, '_topo_produtos_produto_2_imagem', 'field_6033ae0f2b5e5'),
(460, 73, 'topo_produtos_produto_2_tipo_nome', 'Acima de 30.000 BTUS'),
(461, 73, '_topo_produtos_produto_2_tipo_nome', 'field_6033aed62b5e6'),
(462, 73, 'topo_produtos_produto_2_subtitulo', 'Sob consulta'),
(463, 73, '_topo_produtos_produto_2_subtitulo', 'field_6033af622b5e7'),
(464, 73, 'topo_produtos_produto', '3'),
(465, 73, '_topo_produtos_produto', 'field_6033adf92b5e4'),
(466, 73, 'topo_produtos', ''),
(467, 73, '_topo_produtos', 'field_6033ad872b5e3'),
(468, 73, 'topo', ''),
(469, 73, '_topo', 'field_6033aff0e8ae5'),
(470, 73, 'topo_ebook', '58'),
(471, 73, '_topo_ebook', 'field_6063385335753'),
(472, 73, 'ebook', '72'),
(473, 73, '_ebook', 'field_60636bf7ae8ef');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-02-19 16:15:38', '2021-02-19 18:15:38', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-02-19 16:15:38', '2021-02-19 18:15:38', '', 0, 'http://arbox.localhost/?p=1', 0, 'post', '', 1),
(3, 1, '2021-02-19 16:15:38', '2021-02-19 18:15:38', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://arbox.localhost.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2021-02-19 16:15:38', '2021-02-19 18:15:38', '', 0, 'http://arbox.localhost/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-02-19 17:56:59', '2021-02-19 19:56:59', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-03-30 21:18:06', '2021-03-31 00:18:06', '', 0, 'http://arbox.localhost/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2021-02-19 17:56:59', '2021-02-19 19:56:59', '', 'Produto', '', 'publish', 'closed', 'closed', '', 'produto', '', '', '2021-03-30 21:18:06', '2021-03-31 00:18:06', '', 0, 'http://arbox.localhost/?p=6', 2, 'nav_menu_item', '', 0),
(7, 1, '2021-02-19 17:57:00', '2021-02-19 19:57:00', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-03-30 21:18:07', '2021-03-31 00:18:07', '', 0, 'http://arbox.localhost/?p=7', 3, 'nav_menu_item', '', 0),
(8, 1, '2021-02-19 17:57:00', '2021-02-19 19:57:00', '', 'Solicitar Orçamento', '', 'publish', 'closed', 'closed', '', 'solicitar-orcamento', '', '', '2021-03-30 21:18:07', '2021-03-31 00:18:07', '', 0, 'http://arbox.localhost/?p=8', 5, 'nav_menu_item', '', 0),
(11, 1, '2021-02-22 10:21:03', '2021-02-22 13:21:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"32\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:30:\"Área abaixo do menu e do logo\";}', 'Topo', 'topo', 'publish', 'closed', 'closed', '', 'group_6033ab48c6caf', '', '', '2021-03-30 15:19:40', '2021-03-30 18:19:40', '', 0, 'http://arbox.localhost/?post_type=acf-field-group&#038;p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2021-02-22 10:21:03', '2021-02-22 13:21:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_6033ab7b2b5de', '', '', '2021-02-23 09:58:54', '2021-02-23 12:58:54', '', 22, 'http://arbox.localhost/?post_type=acf-field&#038;p=12', 2, 'acf-field', '', 0),
(13, 1, '2021-02-22 10:21:03', '2021-02-22 13:21:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtítulo', 'subtitulo', 'publish', 'closed', 'closed', '', 'field_6033ac4f2b5df', '', '', '2021-02-23 09:58:54', '2021-02-23 12:58:54', '', 22, 'http://arbox.localhost/?post_type=acf-field&#038;p=13', 3, 'acf-field', '', 0),
(14, 1, '2021-02-22 10:21:04', '2021-02-22 13:21:04', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:47:\"Link e texto do botão de orçamento ou contato\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Botão', 'botao', 'publish', 'closed', 'closed', '', 'field_6033ac682b5e0', '', '', '2021-02-23 09:58:54', '2021-02-23 12:58:54', '', 22, 'http://arbox.localhost/?post_type=acf-field&#038;p=14', 4, 'acf-field', '', 0),
(15, 1, '2021-02-22 10:21:04', '2021-02-22 13:21:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto do botão', 'texto_do_botao', 'publish', 'closed', 'closed', '', 'field_6033acef2b5e1', '', '', '2021-02-22 10:21:04', '2021-02-22 13:21:04', '', 14, 'http://arbox.localhost/?post_type=acf-field&p=15', 0, 'acf-field', '', 0),
(16, 1, '2021-02-22 10:21:04', '2021-02-22 13:21:04', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link do botão (URL)', 'link_url', 'publish', 'closed', 'closed', '', 'field_6033ad072b5e2', '', '', '2021-02-22 10:21:04', '2021-02-22 13:21:04', '', 14, 'http://arbox.localhost/?post_type=acf-field&p=16', 1, 'acf-field', '', 0),
(17, 1, '2021-02-22 10:21:04', '2021-02-22 13:21:04', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Produtos', 'produtos', 'publish', 'closed', 'closed', '', 'field_6033ad872b5e3', '', '', '2021-02-23 09:58:54', '2021-02-23 12:58:54', '', 22, 'http://arbox.localhost/?post_type=acf-field&#038;p=17', 5, 'acf-field', '', 0),
(18, 1, '2021-02-22 10:21:04', '2021-02-22 13:21:04', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:19:\"field_6033aed62b5e6\";s:3:\"min\";i:1;s:3:\"max\";i:3;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:15:\"Adicionar outro\";}', 'Produto', 'produto', 'publish', 'closed', 'closed', '', 'field_6033adf92b5e4', '', '', '2021-02-22 10:21:04', '2021-02-22 13:21:04', '', 17, 'http://arbox.localhost/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(19, 1, '2021-02-22 10:21:04', '2021-02-22 13:21:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:1;s:10:\"mime_types\";s:19:\"png, svg, jpg, jpeg\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_6033ae0f2b5e5', '', '', '2021-02-22 10:21:04', '2021-02-22 13:21:04', '', 18, 'http://arbox.localhost/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2021-02-22 10:21:04', '2021-02-22 13:21:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tipo (nome)', 'tipo_nome', 'publish', 'closed', 'closed', '', 'field_6033aed62b5e6', '', '', '2021-02-22 10:21:04', '2021-02-22 13:21:04', '', 18, 'http://arbox.localhost/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2021-02-22 10:21:04', '2021-02-22 13:21:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Subtítulo', 'subtitulo', 'publish', 'closed', 'closed', '', 'field_6033af622b5e7', '', '', '2021-02-22 10:21:04', '2021-02-22 13:21:04', '', 18, 'http://arbox.localhost/?post_type=acf-field&p=21', 2, 'acf-field', '', 0),
(22, 1, '2021-02-22 10:28:59', '2021-02-22 13:28:59', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Topo Area', 'topo', 'publish', 'closed', 'closed', '', 'field_6033aff0e8ae5', '', '', '2021-02-23 09:58:53', '2021-02-23 12:58:53', '', 11, 'http://arbox.localhost/?post_type=acf-field&#038;p=22', 0, 'acf-field', '', 0),
(23, 1, '2021-02-22 10:28:59', '2021-02-22 13:28:59', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:20:\"Vídeo de background\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:14:\"mp4, webm, ogg\";}', 'Video', 'video', 'publish', 'closed', 'closed', '', 'field_6033b0aee8ae6', '', '', '2021-02-23 09:58:53', '2021-02-23 12:58:53', '', 22, 'http://arbox.localhost/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(24, 1, '2021-02-22 10:28:59', '2021-02-22 13:28:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:45:\"Imagem de fundo quando o vídeo não aparecer\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:14:\"post-thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:14:\"jpg, jpeg, png\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_6033b0f1e8ae7', '', '', '2021-02-22 10:28:59', '2021-02-22 13:28:59', '', 22, 'http://arbox.localhost/?post_type=acf-field&p=24', 1, 'acf-field', '', 0),
(27, 1, '2021-02-22 11:07:49', '2021-02-22 14:07:49', '', 'predio-caixa-de-ar-condicionado-ar-box', '', 'inherit', 'open', 'closed', '', 'predio-caixa-de-ar-condicionado-ar-box', '', '', '2021-03-30 12:08:01', '2021-03-30 15:08:01', '', 32, 'http://arbox.localhost/wp-content/uploads/2021/02/predio-caixa-de-ar-condicionado-ar-box.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2021-02-22 12:00:42', '2021-02-22 15:00:42', '', 'ar-box-caixas-de-ar-condicionado-logo', '', 'inherit', 'open', 'closed', '', 'ar-box-caixas-de-ar-condicionado-logo', '', '', '2021-02-22 12:00:42', '2021-02-22 15:00:42', '', 0, 'http://arbox.localhost/wp-content/uploads/2021/02/ar-box-caixas-de-ar-condicionado-logo.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2021-02-22 12:01:06', '2021-02-22 15:01:06', 'http://arbox.localhost/wp-content/uploads/2021/02/cropped-ar-box-caixas-de-ar-condicionado-logo.png', 'cropped-ar-box-caixas-de-ar-condicionado-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-ar-box-caixas-de-ar-condicionado-logo-png', '', '', '2021-02-22 12:01:06', '2021-02-22 15:01:06', '', 0, 'http://arbox.localhost/wp-content/uploads/2021/02/cropped-ar-box-caixas-de-ar-condicionado-logo.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2021-02-23 10:08:15', '2021-02-23 13:08:15', '', 'Caixa Protetora para Ar Condicionado', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2021-03-31 16:51:30', '2021-03-31 19:51:30', '', 0, 'http://arbox.localhost/?page_id=32', 0, 'page', '', 0),
(33, 1, '2021-02-23 10:08:15', '2021-02-23 13:08:15', '', 'Home 2', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-02-23 10:08:15', '2021-02-23 13:08:15', '', 32, 'http://arbox.localhost/index.php/2021/02/23/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2021-02-23 10:08:56', '2021-02-23 13:08:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-02-23 10:08:56', '2021-02-23 13:08:56', '', 32, 'http://arbox.localhost/index.php/2021/02/23/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2021-02-23 10:14:36', '2021-02-23 13:14:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-02-23 10:14:36', '2021-02-23 13:14:36', '', 32, 'http://arbox.localhost/index.php/2021/02/23/32-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2021-03-01 15:54:47', '2021-03-01 18:54:47', '', 'Lead WhatsApp', '', 'publish', 'closed', 'closed', '', 'whatsapp-lead', '', '', '2021-03-01 15:55:34', '2021-03-01 18:55:34', '', 0, 'http://arbox.localhost/?page_id=40', 0, 'page', '', 0),
(41, 1, '2021-03-01 15:54:47', '2021-03-01 18:54:47', '', 'Lead WhatsApp', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-03-01 15:54:47', '2021-03-01 18:54:47', '', 40, 'http://arbox.localhost/index.php/2021/03/01/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2021-03-02 09:40:06', '2021-03-02 12:40:06', '', 'Lead WhatsApp - Obrigado', '', 'publish', 'closed', 'closed', '', 'obrigado-whatsapp', '', '', '2021-03-02 09:40:06', '2021-03-02 12:40:06', '', 0, 'http://arbox.localhost/?page_id=42', 0, 'page', '', 0),
(43, 1, '2021-03-02 09:40:06', '2021-03-02 12:40:06', '', 'Lead WhatsApp - Obrigado', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2021-03-02 09:40:06', '2021-03-02 12:40:06', '', 42, 'http://arbox.localhost/42-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2021-03-02 11:00:05', '2021-03-02 14:00:05', '', 'Formulário - Obrigado', '', 'publish', 'closed', 'closed', '', 'obrigado-formulario', '', '', '2021-03-02 11:00:25', '2021-03-02 14:00:25', '', 0, 'http://arbox.localhost/?page_id=44', 0, 'page', '', 0),
(45, 1, '2021-03-02 11:00:05', '2021-03-02 14:00:05', '', 'Formulário - Obrigado', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2021-03-02 11:00:05', '2021-03-02 14:00:05', '', 44, 'http://arbox.localhost/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2021-03-02 11:01:03', '2021-03-02 14:01:03', '', 'Lead Popup Exit – Obrigado', '', 'publish', 'closed', 'closed', '', 'obrigado-meligue', '', '', '2021-03-02 11:06:30', '2021-03-02 14:06:30', '', 0, 'http://arbox.localhost/?page_id=46', 0, 'page', '', 0),
(47, 1, '2021-03-02 11:01:03', '2021-03-02 14:01:03', '', 'Lead Popup Exit – Obrigado', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2021-03-02 11:01:03', '2021-03-02 14:01:03', '', 46, 'http://arbox.localhost/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2021-03-02 11:23:18', '2021-03-02 14:23:18', '', 'Lead Popup Exit', '', 'publish', 'closed', 'closed', '', 'lead-exit', '', '', '2021-03-02 11:23:34', '2021-03-02 14:23:34', '', 0, 'http://arbox.localhost/?page_id=48', 0, 'page', '', 0),
(49, 1, '2021-03-02 11:23:18', '2021-03-02 14:23:18', '', 'Lead Popup Exit', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2021-03-02 11:23:18', '2021-03-02 14:23:18', '', 48, 'http://arbox.localhost/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2021-03-02 14:36:56', '2021-03-02 17:36:56', '', 'Envio Contato', '', 'publish', 'closed', 'closed', '', 'envio-contato', '', '', '2021-03-02 23:25:35', '2021-03-03 02:25:35', '', 0, 'http://arbox.localhost/?page_id=50', 0, 'page', '', 0),
(51, 1, '2021-03-02 14:36:56', '2021-03-02 17:36:56', '', 'Envio Contato', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2021-03-02 14:36:56', '2021-03-02 17:36:56', '', 50, 'http://arbox.localhost/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2021-03-03 00:28:21', '2021-03-03 03:28:21', '', 'Caixa Protetora para Ar Condicionado', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-03-03 00:28:21', '2021-03-03 03:28:21', '', 32, 'http://arbox.localhost/32-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2021-03-12 15:35:50', '2021-03-12 18:35:50', '', 'Baixar E-book', '', 'publish', 'closed', 'closed', '', 'baixar-e-book', '', '', '2021-03-30 21:18:07', '2021-03-31 00:18:07', '', 0, 'http://arbox.localhost/?p=55', 4, 'nav_menu_item', '', 0),
(56, 1, '2021-03-25 16:32:09', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-03-25 16:32:09', '0000-00-00 00:00:00', '', 0, 'http://arbox.localhost/?p=56', 0, 'post', '', 0),
(58, 1, '2021-03-30 12:07:47', '2021-03-30 15:07:47', '', 'arbox', '', 'inherit', 'open', 'closed', '', 'arbox', '', '', '2021-03-30 12:07:47', '2021-03-30 15:07:47', '', 32, 'http://arbox.localhost/wp-content/uploads/2021/03/arbox.pdf', 0, 'attachment', 'application/pdf', 0),
(59, 1, '2021-03-30 12:08:00', '2021-03-30 15:08:00', '', 'Caixa Protetora para Ar Condicionado', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-03-30 12:08:00', '2021-03-30 15:08:00', '', 32, 'http://arbox.localhost/32-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2021-03-30 14:49:00', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-30 14:49:00', '0000-00-00 00:00:00', '', 0, 'http://arbox.localhost/?page_id=61', 0, 'page', '', 0),
(62, 1, '2021-03-30 15:11:04', '2021-03-30 18:11:04', '', 'Envio E-book', '', 'publish', 'closed', 'closed', '', 'envio-ebook', '', '', '2021-03-30 15:12:03', '2021-03-30 18:12:03', '', 0, 'http://arbox.localhost/?page_id=62', 0, 'page', '', 0),
(63, 1, '2021-03-30 15:11:04', '2021-03-30 18:11:04', '', 'Envio E-book', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2021-03-30 15:11:04', '2021-03-30 18:11:04', '', 62, 'http://arbox.localhost/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2021-03-30 15:18:46', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-30 15:18:46', '0000-00-00 00:00:00', '', 0, 'http://arbox.localhost/?post_type=acf-field-group&p=64', 0, 'acf-field-group', '', 0),
(65, 1, '2021-03-30 15:23:23', '2021-03-30 18:23:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"32\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'E-book', 'e-book', 'publish', 'closed', 'closed', '', 'group_60636bc73cf24', '', '', '2021-03-30 15:23:24', '2021-03-30 18:23:24', '', 0, 'http://arbox.localhost/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2021-03-30 15:23:23', '2021-03-30 18:23:23', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:14:\"Arquivo em pdf\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:3:\"pdf\";}', 'E-book', 'ebook', 'publish', 'closed', 'closed', '', 'field_60636bf7ae8ef', '', '', '2021-03-30 15:23:23', '2021-03-30 18:23:23', '', 65, 'http://arbox.localhost/?post_type=acf-field&p=66', 0, 'acf-field', '', 0),
(67, 1, '2021-03-30 15:23:57', '2021-03-30 18:23:57', '', 'Caixa Protetora para Ar Condicionado', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-03-30 15:23:57', '2021-03-30 18:23:57', '', 32, 'http://arbox.localhost/32-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2021-03-30 15:33:50', '2021-03-30 18:33:50', '', 'Baixar E-book', '', 'publish', 'closed', 'closed', '', 'baixar-ebook', '', '', '2021-03-30 15:34:13', '2021-03-30 18:34:13', '', 0, 'http://arbox.localhost/?page_id=68', 0, 'page', '', 0),
(69, 1, '2021-03-30 15:33:50', '2021-03-30 18:33:50', '', 'Baixar E-book', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2021-03-30 15:33:50', '2021-03-30 18:33:50', '', 68, 'http://arbox.localhost/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2021-03-30 15:46:10', '2021-03-30 18:46:10', '', 'Obrigado E-book', '', 'publish', 'closed', 'closed', '', 'obrigado-ebook', '', '', '2021-03-30 15:55:47', '2021-03-30 18:55:47', '', 0, 'http://arbox.localhost/?page_id=70', 0, 'page', '', 0),
(71, 1, '2021-03-30 15:46:10', '2021-03-30 18:46:10', '', 'Obrigado E-book', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2021-03-30 15:46:10', '2021-03-30 18:46:10', '', 70, 'http://arbox.localhost/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2021-03-31 16:51:09', '2021-03-31 19:51:09', '', 'E-book Ar Box', '', 'inherit', 'closed', 'closed', '', 'e-book-ar-box-1', '', '', '2021-03-31 16:51:22', '2021-03-31 19:51:22', '', 32, 'http://arbox.localhost/wp-content/uploads/2021/03/E-book-Ar-Box-1.pdf', 0, 'attachment', 'application/pdf', 0),
(73, 1, '2021-03-31 16:51:30', '2021-03-31 19:51:30', '', 'Caixa Protetora para Ar Condicionado', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2021-03-31 16:51:30', '2021-03-31 19:51:30', '', 32, 'http://arbox.localhost/32-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'main menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(55, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kbrtec'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"1c3e755f021a8f5f41345ccd2084718a481ea27ca49c43300031dde52cfbf2ea\";a:4:{s:10:\"expiration\";i:1617282719;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1617109919;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '56'),
(18, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:\"title-attribute\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'meta-box-order_acf-field-group', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:80:\"acf-field-group-fields,acf-field-group-locations,acf-field-group-options,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(21, 1, 'screen_layout_acf-field-group', '1'),
(22, 1, 'closedpostboxes_page', 'a:2:{i:0;s:10:\"wpseo_meta\";i:1;s:11:\"commentsdiv\";}'),
(23, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:9:\"authordiv\";}'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(25, 1, 'wp_user-settings-time', '1617116888'),
(26, 1, 'nav_menu_recently_edited', '2'),
(28, 1, 'wp_yoast_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";O:61:\"Yoast\\WP\\SEO\\Presenters\\Admin\\Indexing_Notification_Presenter\":3:{s:18:\"\0*\0total_unindexed\";i:23;s:9:\"\0*\0reason\";s:23:\"home_url_option_changed\";s:20:\"\0*\0short_link_helper\";O:38:\"Yoast\\WP\\SEO\\Helpers\\Short_Link_Helper\":2:{s:17:\"\0*\0options_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Options_Helper\":0:{}s:17:\"\0*\0product_helper\";O:35:\"Yoast\\WP\\SEO\\Helpers\\Product_Helper\":0:{}}}s:7:\"options\";a:10:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:13:\"wpseo-reindex\";s:4:\"user\";O:7:\"WP_User\":8:{s:4:\"data\";O:8:\"stdClass\":10:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:6:\"kbrtec\";s:9:\"user_pass\";s:34:\"$P$BgN8mVM4o2UhCZMF/cMpq9lYLCouif1\";s:13:\"user_nicename\";s:6:\"kbrtec\";s:10:\"user_email\";s:29:\"cicero.vinicius@kbrtec.com.br\";s:8:\"user_url\";s:22:\"http://arbox.localhost\";s:15:\"user_registered\";s:19:\"2021-02-19 18:15:37\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:6:\"kbrtec\";}s:2:\"ID\";i:1;s:4:\"caps\";a:1:{s:13:\"administrator\";b:1;}s:7:\"cap_key\";s:15:\"wp_capabilities\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:7:\"allcaps\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;s:13:\"administrator\";b:1;}s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;}s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(29, 1, 'hustle_dismissed_notifications', 'a:3:{i:0;s:29:\"hustle_sendgrid_update_showed\";i:1;s:27:\"release_highlight_modal_441\";i:2;s:13:\"welcome_modal\";}'),
(30, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:94:\"acf-group_6033ab48c6caf,wpseo_meta,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(31, 1, 'screen_layout_page', '2'),
(32, 2, 'nickname', 'arbox'),
(33, 2, 'first_name', 'Ar Box'),
(34, 2, 'last_name', ''),
(35, 2, 'description', ''),
(36, 2, 'rich_editing', 'true'),
(37, 2, 'syntax_highlighting', 'true'),
(38, 2, 'comment_shortcuts', 'false'),
(39, 2, 'admin_color', 'fresh'),
(40, 2, 'use_ssl', '0'),
(41, 2, 'show_admin_bar_front', 'true'),
(42, 2, 'locale', ''),
(43, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(44, 2, 'wp_user_level', '10'),
(45, 2, 'dismissed_wp_pointers', ''),
(46, 2, '_yoast_wpseo_profile_updated', '1617220083');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'kbrtec', '$P$BgN8mVM4o2UhCZMF/cMpq9lYLCouif1', 'kbrtec', 'cicero.vinicius@kbrtec.com.br', 'http://arbox.localhost', '2021-02-19 18:15:37', '', 0, 'kbrtec'),
(2, 'arbox', '$P$BgixXeUlDsW/pnxDCk0nUXtDYg7/6K/', 'arbox', 'contato@arboxcaixas.com.br', '', '2021-03-31 19:48:01', '', 0, 'Ar Box');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_whatsapp`
--

CREATE TABLE `wp_whatsapp` (
  `cd_whatsapp` int(11) NOT NULL,
  `nm_whatsapp` varchar(100) NOT NULL,
  `email_whatsapp` varchar(100) NOT NULL,
  `telefone_whatsapp` varchar(50) NOT NULL,
  `msg_whatsapp` varchar(350) DEFAULT NULL,
  `dt_whatsapp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_yoast_indexable`
--

CREATE TABLE `wp_yoast_indexable` (
  `id` int(11) UNSIGNED NOT NULL,
  `permalink` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `post_parent` bigint(20) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT 0,
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int(11) UNSIGNED DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_focus_keyword_score` int(3) DEFAULT NULL,
  `readability_score` int(3) DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT 0,
  `is_robots_noindex` tinyint(1) DEFAULT 0,
  `is_robots_nofollow` tinyint(1) DEFAULT 0,
  `is_robots_noarchive` tinyint(1) DEFAULT 0,
  `is_robots_noimageindex` tinyint(1) DEFAULT 0,
  `is_robots_nosnippet` tinyint(1) DEFAULT 0,
  `twitter_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_count` int(11) DEFAULT NULL,
  `incoming_link_count` int(11) DEFAULT NULL,
  `prominent_words_version` int(11) UNSIGNED DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1,
  `language` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT 0,
  `estimated_reading_time_minutes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_yoast_indexable`
--

INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`) VALUES
(1, 'http://arbox.localhost/author/kbrtec/', '37:10008b6b84af77f3cdcd3ded2e6384ea', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://2.gravatar.com/avatar/b84bc944672f9eca1fc09285514323d2?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://2.gravatar.com/avatar/b84bc944672f9eca1fc09285514323d2?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2021-03-02 20:07:21', '2021-03-31 22:51:35', 1, NULL, NULL, NULL, NULL, 0, NULL),
(2, 'http://arbox.localhost/', '23:b45634f605a5d3120c1a7ea4c3534749', 32, 'post', 'page', 1, 0, NULL, 'As caixas de ar condicionado da Ar Box com design sofisticado que visa amenizar os impactos causados pelo ar condicionado, unindo a estética e a facilidade de instalação e manutenção dos aparelhos de ar condicionados.', 'Caixa Protetora para Ar Condicionado', 'publish', NULL, 0, NULL, NULL, NULL, 'ar condicionado', 35, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-02 20:07:21', '2021-03-31 22:51:35', 1, NULL, NULL, NULL, NULL, 0, NULL),
(3, 'http://arbox.localhost/', '23:b45634f605a5d3120c1a7ea4c3534749', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', 'Caixas de ar condicionado', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, '2021-03-02 20:07:24', '2021-03-04 22:05:25', 1, NULL, NULL, NULL, NULL, 0, NULL),
(4, 'http://arbox.localhost/envio-contato/', '37:ef0814c8cb0a027e57da2889229c998c', 50, 'post', 'page', 1, 0, NULL, NULL, 'Envio Contato', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-03 02:22:30', '2021-03-12 21:32:38', 1, NULL, NULL, NULL, NULL, 0, NULL),
(5, 'http://arbox.localhost/obrigado-formulario/', '43:3fc9ee1e024066abb890fa535c8e0cbf', 44, 'post', 'page', 1, 0, NULL, NULL, 'Formulário &#8211; Obrigado', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-03 02:22:32', '2021-03-12 21:32:43', 1, NULL, NULL, NULL, NULL, 0, NULL),
(6, 'http://arbox.localhost/lead-exit/', '33:c87021cc910850ea150de418fb520118', 48, 'post', 'page', 1, 0, NULL, NULL, 'Lead Popup Exit', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-03 02:22:33', '2021-03-12 21:32:43', 1, NULL, NULL, NULL, NULL, 0, NULL),
(7, 'http://arbox.localhost/obrigado-meligue/', '40:642f1f3e6d36ed50b8e4812147c64ece', 46, 'post', 'page', 1, 0, NULL, NULL, 'Lead Popup Exit – Obrigado', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-03 02:22:34', '2021-03-12 21:32:43', 1, NULL, NULL, NULL, NULL, 0, NULL),
(8, 'http://arbox.localhost/whatsapp-lead/', '37:b894207ee0a1b2a7fe6faf5e4722f81f', 40, 'post', 'page', 1, 0, NULL, NULL, 'Lead WhatsApp', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-03 02:22:34', '2021-03-12 21:32:42', 1, NULL, NULL, NULL, NULL, 0, NULL),
(9, 'http://arbox.localhost/obrigado-whatsapp/', '41:4fbbb7bab31212d650973eb31a54c93e', 42, 'post', 'page', 1, 0, NULL, NULL, 'Lead WhatsApp &#8211; Obrigado', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-03 02:22:34', '2021-03-12 21:32:42', 1, NULL, NULL, NULL, NULL, 0, NULL),
(10, 'http://arbox.localhost/?page_id=3', '33:8e82911ed9bc54897f0b215a9511c3dd', 3, 'post', 'page', 1, 0, NULL, NULL, 'Política de privacidade', 'draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-03 02:22:34', '2021-03-12 21:32:37', 1, NULL, NULL, NULL, NULL, 0, NULL),
(11, 'http://arbox.localhost/home/', '28:febb14442f65e5520361c9926afdcd01', 5, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Home', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-03 02:36:54', '2021-03-31 03:18:06', 1, NULL, NULL, NULL, NULL, 0, NULL),
(12, 'http://arbox.localhost/produto/', '31:4f7ea23a38a6e84473765458860f5444', 6, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Produto', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-03 02:36:56', '2021-03-31 03:18:07', 1, NULL, NULL, NULL, NULL, 0, NULL),
(13, 'http://arbox.localhost/blog/', '28:982902a101cc272b57cf4675d2f87eaa', 7, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Blog', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-03 02:36:56', '2021-03-31 03:18:07', 1, NULL, NULL, NULL, NULL, 0, NULL),
(14, 'http://arbox.localhost/solicitar-orcamento/', '43:058466de1d04b30927b1d098e4b0f33e', 8, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Solicitar Orçamento', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-03 02:36:56', '2021-03-31 03:18:08', 1, NULL, NULL, NULL, NULL, 0, NULL),
(17, 'http://arbox.localhost/wp-content/uploads/2021/02/predio-caixa-de-ar-condicionado-ar-box.jpg', '92:10dfeec0578065710719a0a585cb3663', 27, 'post', 'attachment', 1, 32, NULL, NULL, 'predio-caixa-de-ar-condicionado-ar-box', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://arbox.localhost/wp-content/uploads/2021/02/predio-caixa-de-ar-condicionado-ar-box.jpg', NULL, '27', 'attachment-image', NULL, NULL, 'http://arbox.localhost/wp-content/uploads/2021/02/predio-caixa-de-ar-condicionado-ar-box.jpg', '27', 'attachment-image', '{\"width\":1920,\"height\":929,\"url\":\"http://arbox.localhost/wp-content/uploads/2021/02/predio-caixa-de-ar-condicionado-ar-box.jpg\",\"path\":\"C:\\\\xampp\\\\htdocs\\\\ar-box/wp-content/uploads/2021/02/predio-caixa-de-ar-condicionado-ar-box.jpg\",\"size\":\"full\",\"id\":27,\"alt\":\"\",\"pixels\":1783680,\"type\":\"image/jpeg\"}', 0, 1, NULL, '2021-03-12 18:32:36', '2021-03-30 18:08:02', 1, NULL, NULL, NULL, NULL, 1, NULL),
(18, 'http://arbox.localhost/wp-content/uploads/2021/02/ar-box-caixas-de-ar-condicionado-logo.png', '91:1d1699bdc26c865c8e983260332b5249', 29, 'post', 'attachment', 1, 0, NULL, NULL, 'ar-box-caixas-de-ar-condicionado-logo', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://arbox.localhost/wp-content/uploads/2021/02/ar-box-caixas-de-ar-condicionado-logo.png', NULL, '29', 'attachment-image', NULL, NULL, 'http://arbox.localhost/wp-content/uploads/2021/02/ar-box-caixas-de-ar-condicionado-logo.png', '29', 'attachment-image', '{\"width\":211,\"height\":81,\"url\":\"http://arbox.localhost/wp-content/uploads/2021/02/ar-box-caixas-de-ar-condicionado-logo.png\",\"path\":\"C:\\\\xampp\\\\htdocs\\\\ar-box/wp-content/uploads/2021/02/ar-box-caixas-de-ar-condicionado-logo.png\",\"size\":\"full\",\"id\":29,\"alt\":\"\",\"pixels\":17091,\"type\":\"image/png\"}', NULL, NULL, NULL, '2021-03-12 18:32:36', '2021-03-12 21:32:36', 1, NULL, NULL, NULL, NULL, 0, NULL),
(19, 'http://arbox.localhost/wp-content/uploads/2021/02/cropped-ar-box-caixas-de-ar-condicionado-logo.png', '99:dc8db39c786c031245c45380f75d294e', 30, 'post', 'attachment', 1, 0, NULL, NULL, 'cropped-ar-box-caixas-de-ar-condicionado-logo.png', 'inherit', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'http://arbox.localhost/wp-content/uploads/2021/02/cropped-ar-box-caixas-de-ar-condicionado-logo.png', NULL, '30', 'attachment-image', NULL, NULL, 'http://arbox.localhost/wp-content/uploads/2021/02/cropped-ar-box-caixas-de-ar-condicionado-logo.png', '30', 'attachment-image', '{\"width\":211,\"height\":81,\"url\":\"http://arbox.localhost/wp-content/uploads/2021/02/cropped-ar-box-caixas-de-ar-condicionado-logo.png\",\"path\":\"C:\\\\xampp\\\\htdocs\\\\ar-box/wp-content/uploads/2021/02/cropped-ar-box-caixas-de-ar-condicionado-logo.png\",\"size\":\"full\",\"id\":30,\"alt\":\"\",\"pixels\":17091,\"type\":\"image/png\"}', NULL, NULL, NULL, '2021-03-12 18:32:37', '2021-03-12 21:32:37', 1, NULL, NULL, NULL, NULL, 0, NULL),
(20, 'http://arbox.localhost/ola-mundo/', '33:5c73b3adf175ad68f3155b1f8d711cb2', 1, 'post', 'post', 1, 0, NULL, NULL, 'Olá, mundo!', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-12 18:32:38', '2021-03-25 22:32:17', 1, NULL, NULL, NULL, NULL, 0, NULL),
(21, 'http://arbox.localhost/category/sem-categoria/', '46:9b159ba7fe7c3218ee0d1b52cbbd5c6f', 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Sem categoria', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-12 18:32:40', '2021-03-12 21:32:43', 1, NULL, NULL, NULL, NULL, 0, NULL),
(22, NULL, NULL, NULL, 'system-page', '404', NULL, NULL, 'Page not found %%sep%% %%sitename%%', NULL, '', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-12 18:32:41', '2021-03-12 21:32:41', 1, NULL, NULL, NULL, NULL, 0, NULL),
(23, NULL, NULL, NULL, 'system-page', 'search-result', NULL, NULL, 'You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-12 18:32:42', '2021-03-12 21:32:42', 1, NULL, NULL, NULL, NULL, 0, NULL),
(24, NULL, NULL, NULL, 'date-archive', NULL, NULL, NULL, '%%date%% %%page%% %%sep%% %%sitename%%', '', NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-12 18:32:42', '2021-03-12 21:32:42', 1, NULL, NULL, NULL, NULL, 0, NULL),
(25, 'http://arbox.localhost/baixar-e-book/', '37:e5ec1dfeec9d8adfc6c7e74f904378a7', 55, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Baixar E-book', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-12 18:35:08', '2021-03-31 03:18:07', 1, NULL, NULL, NULL, NULL, 0, NULL),
(26, 'http://arbox.localhost/?p=56', '28:863bd92182e91b77aa485f9a00eaf65c', 56, 'post', 'post', 1, 0, NULL, NULL, 'Rascunho automático', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-25 19:32:11', '2021-03-25 22:32:13', 1, NULL, NULL, NULL, NULL, 0, NULL),
(28, 'http://arbox.localhost/?post_type=acf-field&p=22', '48:4942f77882a4de82debfcba1aa54ae4d', 22, 'post', 'acf-field', 1, 11, NULL, NULL, 'Topo Area', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-30 14:46:12', '2021-03-30 17:46:12', 1, NULL, NULL, NULL, NULL, 0, NULL),
(29, 'http://arbox.localhost/?post_type=acf-field-group&p=11', '54:ee9ea45fff7572a2749406d335f17906', 11, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Topo', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-30 14:46:12', '2021-03-30 21:19:41', 1, NULL, NULL, NULL, NULL, 0, NULL),
(30, 'http://arbox.localhost/wp-content/uploads/2021/03/arbox.pdf', '59:5027c8dfefb90c03b0285a62f621d231', 58, 'post', 'attachment', 1, 32, NULL, NULL, 'arbox', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-30 15:07:47', '2021-03-30 18:07:49', 1, NULL, NULL, NULL, NULL, 1, NULL),
(31, 'http://arbox.localhost/?page_id=61', '34:7ddaf9e05252fa285802c2272241bf1f', 61, 'post', 'page', 1, 0, NULL, NULL, 'Rascunho automático', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-30 17:49:00', '2021-03-30 20:49:01', 1, NULL, NULL, NULL, NULL, 0, NULL),
(32, 'http://arbox.localhost/envio-ebook/', '35:fc677e6e7562539276d5a6a0d96b6c77', 62, 'post', 'page', 1, 0, NULL, NULL, 'Envio E-book', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-30 18:08:47', '2021-03-30 21:12:04', 1, NULL, NULL, NULL, NULL, 0, NULL),
(33, 'http://arbox.localhost/?post_type=acf-field-group&p=64', '54:a244e5e9a5369c1db76dc3f245dbb190', 64, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'Rascunho automático', 'auto-draft', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-30 18:18:46', '2021-03-30 21:18:47', 1, NULL, NULL, NULL, NULL, 0, NULL),
(34, 'http://arbox.localhost/?post_type=acf-field-group&p=65', '54:5692df60f494802cb563c15240ce0321', 65, 'post', 'acf-field-group', 1, 0, NULL, NULL, 'E-book', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-30 18:19:50', '2021-03-30 21:23:24', 1, NULL, NULL, NULL, NULL, 0, NULL),
(35, 'http://arbox.localhost/?post_type=acf-field&p=66', '48:aef005f76646cd43688cd40277f6e7ae', 66, 'post', 'acf-field', 1, 65, NULL, NULL, 'E-book', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-30 18:23:23', '2021-03-30 21:23:24', 1, NULL, NULL, NULL, NULL, 1, NULL),
(36, 'http://arbox.localhost/baixar-ebook/', '36:36922cf1bce3edec0109f4d1b1f8f173', 68, 'post', 'page', 1, 0, NULL, NULL, 'Baixar E-book', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-30 18:33:39', '2021-03-30 21:34:13', 1, NULL, NULL, NULL, NULL, 0, NULL),
(37, 'http://arbox.localhost/obrigado-ebook/', '38:24d94042d012fc0e78073979d12354f2', 70, 'post', 'page', 1, 0, NULL, NULL, 'Obrigado E-book', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-30 18:45:52', '2021-03-30 21:55:48', 1, NULL, NULL, NULL, NULL, 0, NULL),
(38, 'http://arbox.localhost/author/arbox/', '36:012a9dbd0b8586cb5afe297f55bdff1c', 2, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://2.gravatar.com/avatar/bdb2914da0f2fb7271663ef464d633ca?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://2.gravatar.com/avatar/bdb2914da0f2fb7271663ef464d633ca?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2021-03-31 19:48:03', '2021-03-31 22:48:03', 1, NULL, NULL, NULL, NULL, 0, NULL),
(39, 'http://arbox.localhost/wp-content/uploads/2021/03/E-book-Ar-Box-1.pdf', '69:0c3d576429f92a7b7b18cd04c0e61b71', 72, 'post', 'attachment', 1, 32, NULL, NULL, 'E-book Ar Box', 'inherit', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2021-03-31 19:51:09', '2021-03-31 22:51:23', 1, NULL, NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_yoast_indexable_hierarchy`
--

CREATE TABLE `wp_yoast_indexable_hierarchy` (
  `indexable_id` int(11) UNSIGNED NOT NULL,
  `ancestor_id` int(11) UNSIGNED NOT NULL,
  `depth` int(11) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_yoast_indexable_hierarchy`
--

INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(5, 0, 0, 1),
(7, 0, 0, 1),
(9, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(17, 2, 1, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(25, 0, 0, 1),
(26, 0, 0, 1),
(28, 29, 1, 1),
(29, 0, 0, 1),
(30, 2, 1, 1),
(31, 0, 0, 1),
(32, 0, 0, 1),
(33, 0, 0, 1),
(34, 0, 0, 1),
(35, 34, 1, 1),
(36, 0, 0, 1),
(37, 0, 0, 1),
(39, 2, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_yoast_migrations`
--

CREATE TABLE `wp_yoast_migrations` (
  `id` int(11) UNSIGNED NOT NULL,
  `version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_yoast_migrations`
--

INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
(1, '20171228151840'),
(2, '20171228151841'),
(3, '20190529075038'),
(4, '20191011111109'),
(5, '20200408101900'),
(6, '20200420073606'),
(7, '20200428123747'),
(8, '20200428194858'),
(9, '20200429105310'),
(10, '20200430075614'),
(11, '20200430150130'),
(12, '20200507054848'),
(13, '20200513133401'),
(14, '20200609154515'),
(15, '20200616130143'),
(16, '20200617122511'),
(17, '20200702141921'),
(18, '20200728095334'),
(19, '20201202144329'),
(20, '20201216124002'),
(21, '20201216141134');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_yoast_primary_term`
--

CREATE TABLE `wp_yoast_primary_term` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `term_id` bigint(20) DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_id` bigint(20) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `target_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `target_indexable_id` int(11) UNSIGNED DEFAULT NULL,
  `height` int(11) UNSIGNED DEFAULT NULL,
  `width` int(11) UNSIGNED DEFAULT NULL,
  `size` int(11) UNSIGNED DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
(1, 'http://arbox.localhost/wp-content/uploads/2021/02/predio-caixa-de-ar-condicionado-ar-box-300x145.jpg', 27, 27, 'image-in', 17, 17, 929, 1920, 442056, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_contato`
--
ALTER TABLE `wp_contato`
  ADD PRIMARY KEY (`cd_contato`);

--
-- Índices para tabela `wp_ebook`
--
ALTER TABLE `wp_ebook`
  ADD PRIMARY KEY (`cd_ebook`);

--
-- Índices para tabela `wp_hustle_entries`
--
ALTER TABLE `wp_hustle_entries`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `entry_type` (`entry_type`),
  ADD KEY `entry_module_id` (`module_id`);

--
-- Índices para tabela `wp_hustle_entries_meta`
--
ALTER TABLE `wp_hustle_entries_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `meta_key` (`meta_key`),
  ADD KEY `meta_entry_id` (`entry_id`),
  ADD KEY `meta_key_object` (`entry_id`,`meta_key`);

--
-- Índices para tabela `wp_hustle_modules`
--
ALTER TABLE `wp_hustle_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `active` (`active`);

--
-- Índices para tabela `wp_hustle_modules_meta`
--
ALTER TABLE `wp_hustle_modules_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Índices para tabela `wp_hustle_tracking`
--
ALTER TABLE `wp_hustle_tracking`
  ADD PRIMARY KEY (`tracking_id`),
  ADD KEY `tracking_module_id` (`module_id`),
  ADD KEY `action` (`action`),
  ADD KEY `tracking_module_object` (`action`,`module_id`,`module_type`),
  ADD KEY `tracking_module_object_ip` (`module_id`,`tracking_id`,`ip`),
  ADD KEY `tracking_date_created` (`date_created`);

--
-- Índices para tabela `wp_lead_exit`
--
ALTER TABLE `wp_lead_exit`
  ADD PRIMARY KEY (`cd_lead`);

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Índices para tabela `wp_whatsapp`
--
ALTER TABLE `wp_whatsapp`
  ADD PRIMARY KEY (`cd_whatsapp`);

--
-- Índices para tabela `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  ADD KEY `object_id_and_type` (`object_id`,`object_type`),
  ADD KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  ADD KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  ADD KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`);

--
-- Índices para tabela `wp_yoast_indexable_hierarchy`
--
ALTER TABLE `wp_yoast_indexable_hierarchy`
  ADD PRIMARY KEY (`indexable_id`,`ancestor_id`),
  ADD KEY `indexable_id` (`indexable_id`),
  ADD KEY `ancestor_id` (`ancestor_id`),
  ADD KEY `depth` (`depth`);

--
-- Índices para tabela `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wp_yoast_migrations_version` (`version`);

--
-- Índices para tabela `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_taxonomy` (`post_id`,`taxonomy`),
  ADD KEY `post_term` (`post_id`,`term_id`);

--
-- Índices para tabela `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `indexable_link_direction` (`indexable_id`,`type`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_contato`
--
ALTER TABLE `wp_contato`
  MODIFY `cd_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_ebook`
--
ALTER TABLE `wp_ebook`
  MODIFY `cd_ebook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_hustle_entries`
--
ALTER TABLE `wp_hustle_entries`
  MODIFY `entry_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_hustle_entries_meta`
--
ALTER TABLE `wp_hustle_entries_meta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_hustle_modules`
--
ALTER TABLE `wp_hustle_modules`
  MODIFY `module_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_hustle_modules_meta`
--
ALTER TABLE `wp_hustle_modules_meta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `wp_hustle_tracking`
--
ALTER TABLE `wp_hustle_tracking`
  MODIFY `tracking_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_lead_exit`
--
ALTER TABLE `wp_lead_exit`
  MODIFY `cd_lead` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=855;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_whatsapp`
--
ALTER TABLE `wp_whatsapp`
  MODIFY `cd_whatsapp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `wp_yoast_indexable`
--
ALTER TABLE `wp_yoast_indexable`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `wp_yoast_migrations`
--
ALTER TABLE `wp_yoast_migrations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `wp_yoast_primary_term`
--
ALTER TABLE `wp_yoast_primary_term`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
