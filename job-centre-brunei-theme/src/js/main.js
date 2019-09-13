AUI().ready(

	/*
	This function gets loaded when all the HTML, not including the portlets, is
	loaded.
	*/

	function() {
		
	$(document).ready(function($){
		
			/*mobile navigation menu js ends*/
			//open/close mega-navigation
			$('.house_toggle').on('click', function(event){
				event.preventDefault();
				toggleNav();
			});

			//close meganavigation
			$('.cd-dropdown .cd-close').on('click', function(event){
				event.preventDefault();
				toggleNav();
			});

			//on mobile - open submenu
			$('.has-children').children('a').on('click', function(event){
				//prevent default clicking on direct children of .has-children 
				event.preventDefault();
				var selected = $(this);
				selected.next('ul').removeClass('is-hidden').end().parent('.has-children').parent('ul').addClass('move-out');
			});



			//submenu items - go back link
			$('.go-back').on('click', function(){
				var selected = $(this),
					visibleNav = $(this).parent('ul').parent('.has-children').parent('ul');
				selected.parent('ul').addClass('is-hidden').parent('.has-children').parent('ul').removeClass('move-out');
			}); 

			function toggleNav(){
				var navIsVisible = ( !$('.cd-dropdown').hasClass('dropdown-is-active') ) ? true : false;
				$('.cd-dropdown').toggleClass('dropdown-is-active', navIsVisible);
				$('.house_toggle').toggleClass('dropdown-is-active', navIsVisible);
				if( !navIsVisible ) {
					$('.cd-dropdown').one('webkitTransitionEnd otransitionend oTransitionEnd msTransitionEnd transitionend',function(){
						$('.has-children ul').addClass('is-hidden');
						$('.move-out').removeClass('move-out');
						$('.is-active').removeClass('is-active');
					});	
				}
			};
			/*mobile navigation menu js ends*/

			/*Floating menu js starts*/

			$('.floatingButton').on('click',
				function(e) {
					e.preventDefault();
					$(this).toggleClass('open');
					if ($(this).children('.fa').hasClass('fa-plus')) {
						$(this).children('.fa').removeClass('fa-plus');
						$(this).children('.fa').addClass('fa-close');
					} else if ($(this).children('.fa').hasClass('fa-close')) {
						$(this).children('.fa').removeClass('fa-close');
						$(this).children('.fa').addClass('fa-plus');
					}
					$('.floatingMenu').stop().slideToggle();
				}
			);
			$(this).on('click', function(e) {
				var container = $(".floatingButton");
		
				// if the target of the click isn't the container nor a descendant of the container
				if (!container.is(e.target) && $('.floatingButtonWrap').has(e.target).length === 0) {
					if (container.hasClass('open')) {
						container.removeClass('open');
					}
					if (container.children('.fa').hasClass('fa-close')) {
						container.children('.fa').removeClass('fa-close');
						container.children('.fa').addClass('fa-plus');
					}
					$('.floatingMenu').hide();
				}
			});
			/*Floating menu js ends*/
	})
});

Liferay.Portlet.ready(

	/*
	This function gets loaded after each and every portlet on the page.

	portletId: the current portlet's id
	node: the Alloy Node object of the current portlet
	*/

	function(portletId, node) {
	}
);

Liferay.on(
	'allPortletsReady',

	/*
	This function gets loaded when everything, including the portlets, is on
	the page.
	*/

	function() {
	}
);