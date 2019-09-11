<nav class="${nav_css_class} ${cd_dropdown}" id="navigation" role="navigation">
        <h2><a href="#">JobCentre Brunie</a></h2>
        <a href="#0" class="cd-close">Close</a>
	<ul aria-label="<@liferay.language key="site-pages" />" class="nav navbar-nav navbar-site" role="menubar">
			<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>
	
			<#list nav_items as navItem>
					
					<#assign showChildren = navItem.hasChildren() />
	
					<#assign
						nav_item_attr_has_popup = ""
						nav_item_attr_selected = ""
						nav_item_caret = ""
						nav_item_css_class = "lfr-nav-item"
						nav_item_link_css_class = ""
						nav_item_href_link=""
						nav_item_link_attr=""
					/>
	
					<#if showChildren>
						<#assign nav_item_attr_has_popup = "aria-haspopup='true'" />
						<#assign nav_item_caret = '<span class="lfr-nav-child-toggle"><i class="icon-angle-down"></i></span>' />
						<#assign
							nav_item_css_class = "${nav_item_css_class} dropdown"
							nav_item_link_css_class = "dropdown-toggle"
							nav_item_link_attr = "data-toggle='dropdown'"
						/>
					</#if>
					
					<#assign nav_item_href_link = "href='${navItem.getURL()}'" />
					
					<#if navItem.isSelected()>
						<#assign
							nav_item_attr_selected = "aria-selected='true'"
							nav_item_css_class = "${nav_item_css_class} selected active"
						/>
					</#if>
	
					<li class="${nav_item_css_class} ${lfr_level_one} " id="layout_${navItem.getLayoutId()}" ${nav_item_attr_selected} role="presentation">
						<a aria-labelledby="layout_${navItem.getLayoutId()}" ${nav_item_attr_has_popup} class="${nav_item_link_css_class} ${lfr_link_level_one}" ${nav_item_href_link} ${nav_item_link_attr} ${navItem.getTarget()} role="menuitem">
							<span><@liferay_theme["layout-icon"] layout=navItem.getLayout() /> ${navItem.getName()} ${nav_item_caret}</span>
						</a>
	
						<#if showChildren>
							<ul aria-expanded="false" class="child-menu dropdown-menu" role="menu">
								<#list navItem.getChildren() as childNavigationItem>
									<#assign
										nav_child_attr_selected = ""
										nav_child_css_class = ""
									/>
	
									<#if childNavigationItem.isSelected()>
										<#assign
											nav_child_attr_selected = "aria-selected='true'"
											nav_child_css_class = "active selected"
										/>
									</#if>
	
									<li class="${nav_child_css_class} ${lfr_level_two}" id="layout_${childNavigationItem.getLayoutId()}" ${nav_child_attr_selected} role="presentation">
										<a aria-labelledby="layout_${childNavigationItem.getLayoutId()}" href="${childNavigationItem.getURL()}" ${childNavigationItem.getTarget()} role="menuitem">${childNavigationItem.getName()}</a>
									</li>
								</#list>
							</ul>
						</#if>
					</li>
			</#list>
		</ul>
</nav>
<@liferay_aui.script use="liferay-navigation-interaction">
		var navigation = A.one('#navigation');
		
		Liferay.Data.NAV_INTERACTION_LIST_SELECTOR = '.navbar-site';
		Liferay.Data.NAV_LIST_SELECTOR = '.navbar-site';
		
		if (navigation) {
			navigation.plug(Liferay.NavigationInteraction);
		}
</@>