<!DOCTYPE html>

<#include init />

<html class="${root_css_class} ${custom_html_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta name="description" content="Job Pro" />
  	<meta name="keywords" content="Job Pro" />
	<meta name="author" content="" />
	<meta name="MobileOptimized" content="320" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">
	<header id="banner" role="banner">
		
    <div id="heading" class="head-top">

      <div class="gc_main_menu_wrapper">
	  		<div class="top_header_language_wrapper">
				<div class="language-wrapper">
					<ul>
						<li>English</li>
						<li>Bahasa Melayu</li>
					</ul>
				</div>
			</div>
            <div class="container-fluid">
                <div class="row">

					<div class="c-topHeader-con">
						<div class="col-xl-2 col-lg-12 col-md-6 col-sm-6 col-6 d-none d-sm-none d-md-none d-lg-block d-xl-block full_width clearfix">
							<div class="gc_header_wrapper">
								<div class="gc_logo">
									<a href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
										<img alt="${logo_description}" src="${site_logo}" />
									</a>
									<#--<h1 class="site-title">
										<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
											<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
										</a>

										<#if show_site_name>
											<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
												${site_name}
											</span>
										</#if> 

									</h1>-->
								</div>
							</div>
						</div>
						<div class="col-xl-7 col-lg-8 col-md-6 col-sm-6 col-6 center_responsive">
							<div class="header-area hidden-menu-bar stick" id="sticker">
								<!-- mainmenu start -->
								<div class="mainmenu">
									<#if has_navigation && is_setup_complete>
										<#include "${full_templates_path}/cus-navigation.ftl" />
									</#if>
								</div>
								<!-- mainmenu end -->
								<!-- mobile menu area start -->
								<header class="mobail_menu">
									<div class="container-fluid">
										<div class="row">
											<div class="col-6 col-sm-6 col-md-6">
												<div class="gc_logo">
													<a href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
														<img alt="${logo_description}" src="${site_logo}" />
													</a>
												</div>
											</div>
											<div class="col-6 col-sm-6 col-md-6">
												<div class="cd-dropdown-wrapper">
													 <a class="house_toggle" href="#0">
													 </a>
													 <#if has_navigation && is_setup_complete>
														<#include "${full_templates_path}/cus-mob-navigation.ftl" />
													</#if>
												</div>
											</div>
										</div>
									</div>
								</header>
							</div>
						</div>
						<div class="col-xl-3 col-lg-4 col-md-4 col-sm-12 col-12 d-none d-sm-none d-md-none d-lg-block d-xl-block">
							<div class="jp_navi_right_btn_wrapper">
								<ul>
									<li class="jobsekker_hover_btn">
										<a href="login.html">Job Seeker</a>
									</li>
									<li class="employer_hover_btn">
										<a href="#!" id="epm_hover_hide">Employer</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
                    
                    
                    

                </div>
            </div>
      </div>
	</div>

		<#--<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if>-->
	</header>

	<section id="content">

		<div class="container">

			<h1 class="hide-accessible">${the_title}</h1>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>

		</div>

	</section>

	<footer id="footer" role="contentinfo">
		<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
		</p>
	</footer>
</div>
<script src="${javascript_folder}/owl.carousel.js"></script>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>