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
                <div class="row c-topHeader-con">

						<div class="col-xl-2 col-lg-12 col-md-12 col-sm-12 col-12 d-none d-sm-none d-md-none d-lg-block d-xl-block full_width clearfix">

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

						<div class="col-xl-7 col-lg-8 col-md-12 col-sm-12 col-12 center_responsive">

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
														<img alt="${logo_description}" src="${images_folder}/header/logo.png" />
													</a>
												</div>
											</div>
											<div class="col-6 col-sm-6 col-md-6">
												<div class="cd-dropdown-wrapper">
													 <a class="house_toggle" href="#0">
                                                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 31.177 31.177" style="enable-background:new 0 0 31.177 31.177;" xml:space="preserve" width="25px" height="25px">
                                                        <g>
                                                            <g>
                                                                <path class="menubar" d="M30.23,1.775H0.946c-0.489,0-0.887-0.398-0.887-0.888S0.457,0,0.946,0H30.23    c0.49,0,0.888,0.398,0.888,0.888S30.72,1.775,30.23,1.775z" fill="#ffffff" />
                                                            </g>
                                                            <g>
                                                                <path class="menubar" d="M30.23,9.126H12.069c-0.49,0-0.888-0.398-0.888-0.888c0-0.49,0.398-0.888,0.888-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,8.729,30.72,9.126,30.23,9.126z" fill="#ffffff" />
                                                            </g>
                                                            <g>
                                                                <path class="menubar" d="M30.23,16.477H0.946c-0.489,0-0.887-0.398-0.887-0.888c0-0.49,0.398-0.888,0.887-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,16.079,30.72,16.477,30.23,16.477z" fill="#ffffff" />
                                                            </g>
                                                            <g>
                                                                <path class="menubar" d="M30.23,23.826H12.069c-0.49,0-0.888-0.396-0.888-0.887c0-0.49,0.398-0.888,0.888-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,23.43,30.72,23.826,30.23,23.826z" fill="#ffffff" />
                                                            </g>
                                                            <g>
                                                                <path class="menubar" d="M30.23,31.177H0.946c-0.489,0-0.887-0.396-0.887-0.887c0-0.49,0.398-0.888,0.887-0.888H30.23    c0.49,0,0.888,0.398,0.888,0.888C31.118,30.78,30.72,31.177,30.23,31.177z" fill="#ffffff" />
                                                            </g>
                                                        </g>
                                                    </svg>
                                                </a>
													 <#if has_navigation && is_setup_complete>
														<#include "${full_templates_path}/cus-mob-navigation.ftl" />
													</#if>
												</div>
											</div>
										</div>
									</div>
								</header>
								<!-- mobile menu area ends -->

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