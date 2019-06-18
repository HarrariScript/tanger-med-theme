<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name} - MARSA7</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
    <link rel="stylesheet" href="${css_folder}/nebular.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<@liferay_util["include"] page=top_head_include />

	
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid pt-0" id="wrapper" >
	<div class="row">
	  	<div class="col-2 clearPadding">
			<section id="sidenav">
				<#include "${full_templates_path}/navigation.ftl" />
			</section>
      	</div>
      	<div class="col-10">

			<#if show_header>
			<header id="banner">
				<div class="navbar navbar-classic navbar-top py-3">
				<div class="container user-personal-bar">
					<div class="align-items-center autofit-row">						

						<div class="autofit-col ">
							<#if show_header_search>
								<div class="justify-content-md-end mr-4 navbar-form" role="search">
									<@liferay.search_bar default_preferences="${preferences}" />
								</div>
							</#if>
						</div>

						<div class="autofit-col">
							<@liferay.user_personal_bar />
						</div>
					</div>
				</div>
				</div>
			</header>
			</#if>

			

			<section class="${portal_content_css_class}" id="content">
				<h1 class="sr-only">${the_title}</h1>

				<#if selectable>
					<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}

					${portletDisplay.setTitle(the_title)}

					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
					</@>
				</#if>
			</section>


			<#if show_footer>
			<footer id="footer" role="contentinfo">
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-center text-md-left">
							<@liferay.language key="powered-by" />
								<a class="text-white" href="http://www.liferay.com" rel="external">Liferay</a>
						</div>
					</div>
				</div>
			</footer>
			</#if>
            <@liferay_util["include"] page=body_bottom_include />

			<@liferay_util["include"] page=bottom_include />
		</div>
	</div>
</div>



</body>

</html>
