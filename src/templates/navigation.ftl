<#if has_navigation && is_setup_complete>

	<a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
				<img alt="${logo_description}" class="mr-2" height="56" src="${site_logo}" />
				<#if show_site_name>
			<h1 class="font-weight-bold h2 mb-0 text-dark">${site_name}</h1>
		</#if>
	</a>

	<#if show_application_rh>
    	<a class="appRH"  href="${app_rh_url}"> 
	    	 <span>Mon</span>
			 <h3> APPLICATION RH </h3>
		</a>
	</#if>
 
	<div aria-expanded="false" class="collapse navbar-collapse" id="navigationCollapse">
		<@liferay.navigation_menu default_preferences="${preferences}" />
	</div>
</#if>