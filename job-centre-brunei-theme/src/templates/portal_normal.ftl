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
		<#--custom header ftl is included-->
		<#include "${full_templates_path}/cus-header.ftl" />

		<#--<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if>-->
	</header>

	<section id="content">

		<div class="container-full-width">

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

	<!--floating menu starts-->
	  <div class="floatingButtonWrap">
        <div class="floatingButtonInner">
            <a href="#" class="floatingButton jp_img_btn">
                 <span class="fa">   <img src="${images_folder}/jp_logo.jpg"> </span>      
			</a>
            <ul class="floatingMenu">
                <li>
                    <a href="#">
                        FAQ
                        <i class="fa icon-question" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                            Contact us
                            <i class="fa icon-phone" aria-hidden="true"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                            Feedback
                            <i class="fa icon-comment-alt" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
	<!--floating menu ends-->
</div>


<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!--Javascript includes starts-->

<script src="${javascript_folder}/owl.carousel.js"></script>

<!--Javascript includes ends-->

</body>

</html>