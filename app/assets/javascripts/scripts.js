/*
* Theme Name: Splash
* Author: Okathemes
* Version: 1.0.0

/* Table of Content
================================================== 

    01. Sticky Header
	02. Main Menu
	03. Revolution slider
    04. Owl carousel
	05. Fancybox    
	06. Isotope fullscreen portflio
    07. Isotope standard portfolio    
    08. Testimonals
    09. Form validation
	10. Image icon hover
	11. parallax mobile
	12. Tabs
	13. Date Rel
    14. ToolTip
	15. Fact counter
    16. Progress bar    
    17. Flick Feeds
    18. Right side panel

*/

/* 01 Sticky Header
================================================== */
$(document).ready(function () {
"use strict";
    var menu = $('.header-nav'),
        pos = menu.offset();

    $(window).scroll(function () {
        if ($(this).scrollTop() > pos.top + menu.height() && menu.hasClass('set') && $(this).scrollTop() > 100) {
            menu.fadeOut('fast', function () {
                $(this).removeClass('set').addClass('sticky').fadeIn('fast');
            });
        } else if ($(this).scrollTop() <= pos.top + 100 && menu.hasClass('sticky')) {
            menu.fadeOut(0, function () {
                $(this).removeClass('sticky').addClass('set').fadeIn(0);
            });
        }
    });

});
$(document).ready(function() {
"use strict";
	$('.block').css('padding-top', $('.header-nav').height() + 'px');
       
}); 
$(window).resize(function() {
"use strict";
	$('.block').css('padding-top', $('.header-nav').height() + 'px');        
}); 

/* 02 Main Menu
================================================== */
$(document).ready(function () {
"use strict";
    $('.js-activated').dropdownHover({
        instantlyCloseOthers: false,
        delay: 0
    }).dropdown();


    $('.dropdown-menu a, .social .dropdown-menu, .social .dropdown-menu input').click(function (e) {
        e.stopPropagation();
    });

});
/* 03 Revolution Slider
================================================== */
jQuery(document).ready(function() {
"use strict";
			jQuery('.tp-banner').show().revolution(
					{
						dottedOverlay:"none",
						delay:10000,
						startwidth:1170,
						startheight:700,
						hideThumbs:200,
						
						thumbWidth:100,
						thumbHeight:50,
						thumbAmount:5,
						
						navigationType:"none",
						navigationArrows:"solo",
						navigationStyle:"preview4",
						
						
						touchenabled:"on",
						onHoverStop:"on",
						
						swipe_velocity: 0.7,
						swipe_min_touches: 1,
						swipe_max_touches: 1,
						drag_block_vertical: false,
												
						parallax:"mouse",
						parallaxBgFreeze:"on",
						parallaxLevels:[7,4,3,2,5,4,3,2,1,0],
												
						keyboardNavigation:"off",
						
						navigationHAlign:"center",
						navigationVAlign:"bottom",
						navigationHOffset:0,
						navigationVOffset:20,

						soloArrowLeftHalign:"left",
						soloArrowLeftValign:"center",
						soloArrowLeftHOffset:20,
						soloArrowLeftVOffset:0,

						soloArrowRightHalign:"right",
						soloArrowRightValign:"center",
						soloArrowRightHOffset:20,
						soloArrowRightVOffset:0,
								
						shadow:0,
						fullWidth:"off",
						fullScreen:"on",

						spinner:"none",
						
						stopLoop:"off",
						stopAfterLoops:-1,
						stopAtSlide:-1,

						shuffle:"off",
						
						autoHeight:"off",						
						forceFullWidth:"off",						
												
												
												
						hideThumbsOnMobile:"off",
						hideNavDelayOnMobile:1500,						
						hideBulletsOnMobile:"off",
						hideArrowsOnMobile:"off",
						hideThumbsUnderResolution:0,
						
						hideSliderAtLimit:0,
						hideCaptionAtLimit:0,
						hideAllCaptionAtLilmit:0,
						startWithSlide:0,
						fullScreenOffsetContainer: ".header"	
					});
					
});
/* 04 Owl Carousel
================================================== */
$(document).ready(function () {
"use strict";    
     $(".owlcarousel").owlCarousel({
        navigation: true,
        navigationText : ['<i class="icon-left-open"></i>','<i class="icon-right-open"></i>'],
        pagination: false,
        rewindNav: false,
        items: 3,
        mouseDrag: true,
        itemsDesktop: [1200, 3],
        itemsDesktopSmall: [1024, 3],
        itemsTablet: [970, 2],
        itemsMobile: [767, 1]
    });

	 $(".owlcarousel-full").owlCarousel({
        navigation: true,
        navigationText : ['<i class="icon-left-open"></i>','<i class="icon-right-open"></i>'],
        pagination: false,
        rewindNav: false,
        items: 4,
        mouseDrag: true,
        itemsDesktop: [1200, 4],
        itemsDesktopSmall: [1024, 4],
        itemsTablet: [970, 2],
        itemsMobile: [767, 1]
    });
	 
	 $(".owlcarousel-full2").owlCarousel({
        navigation: true,
        navigationText : ['<i class="icon-left-open"></i>','<i class="icon-right-open"></i>'],
        pagination: false,
        rewindNav: false,
        items: 6,
        mouseDrag: true,
        itemsDesktop: [1200, 6],
        itemsDesktopSmall: [1024, 4],
        itemsTablet: [970, 2],
        itemsMobile: [767, 1]
    });
	 
	 $(".owl-testimonials").owlCarousel({

        
		rewindNav: true,
        items: 1,
        itemsDesktop: [1200, 1],
        itemsDesktopSmall: [1024, 1],
        itemsTablet: [768, 1],
        itemsMobile: [480, 1],
        navigation: false,
        pagination: true

    });

    $(".owl-clients").owlCarousel({

        autoPlay: 9000,
		rewindNav: true,
        items: 6,
        itemsDesktop: [1200, 6],
        itemsDesktopSmall: [1024, 5],
        itemsTablet: [768, 3],
        itemsMobile: [480, 2],
        navigation: false,
        pagination: false,

    });
    
    var owl = $(".owl-portfolio-slider");

    owl.owlCarousel({
        navigation: false,
        autoHeight: true,
        slideSpeed: 300,
        paginationSpeed: 400,
        singleItem: true
    });

    // Custom Navigation Events
    $(".slider-next").click(function () {
        owl.trigger('owl.next');
    })
    $(".slider-prev").click(function () {
        owl.trigger('owl.prev');
    })
    

});

/* 05 Fancy Box
================================================== */
$(document).ready(function () {
"use strict";
    $(".fancybox").fancybox({
        arrows: true,
        padding: 0,
        closeBtn: true,
        openEffect: 'fade',
        closeEffect: 'fade',
        prevEffect: 'fade',
        nextEffect: 'fade',
        helpers: {
            media: {},
            overlay: {
                locked: false
            },
            buttons: false,
            thumbs: {
                width: 50,
                height: 50
            },
            title: {
                type: 'inside'
            }
        },
        beforeLoad: function () {
            var el, id = $(this.element).data('title-id');
            if (id) {
                el = $('#' + id);
                if (el.length) {
                    this.title = el.html();
                }
            }
        }
    });
});

/* 06 Isotope Fullscreen Portfolio
================================================== */

var isotopeBreakpoints = [
                            { min_width: 1680, columns: 5 },
                            { min_width: 1440, max_width: 1680, columns: 5 },
                            { min_width: 1024, max_width: 1440, columns: 4 },
                            { min_width: 768, max_width: 1024, columns: 3 },
                            { max_width: 768, columns: 1 }
                            
                         ];

$(document).ready(function () {
"use strict";
    var $container = $('.full-portfolio .items');

    $container.imagesLoaded(function () {
        $container.isotope({
            itemSelector: '.item',
            layoutMode: 'fitRows'
        });
    });

    // hook to window resize to resize the portfolio items for fluidity / responsiveness
    $(window).smartresize(function() {
        var windowWidth = $(window).width();
        var windowHeight = $(window).height();

        for ( var i = 0; i < isotopeBreakpoints.length; i++ ) {
            if (windowWidth >= isotopeBreakpoints[i].min_width || !isotopeBreakpoints[i].min_width) {
                if (windowWidth < isotopeBreakpoints[i].max_width || !isotopeBreakpoints[i].max_width) {
                    $container.find('.item').each(function() {
                        $(this).width( Math.floor( $container.width() / isotopeBreakpoints[i].columns ) );
                    });

                    break;
                }
            }
        }
    });

    $(window).trigger( 'smartresize' );


    $('.filter li a').click(function () {

        $('.filter li a').removeClass('active');
        $(this).addClass('active');

        var selector = $(this).attr('data-filter');
        $container.isotope({
            filter: selector
        });

        return false;
    });
});
/* 07 Isotope Standard Portfolio
================================================== */
$(document).ready(function () {
"use strict";
    var $container = $('.portfolio-col .items');
    $container.imagesLoaded(function () {
        $container.isotope({
            itemSelector: '.portfolio-col .item',
            layoutMode: 'fitRows'
        });
    });

    $('.portfolio-col .filter li a').click(function () {

        $('.portfolio-col .filter li a').removeClass('active');
        $(this).addClass('active');

        var selector = $(this).attr('data-filter');
        $container.isotope({
            filter: selector
        });

        return false;
    });

});
/* 08 Testimonails
================================================== */
$(document).ready(function () {
"use strict";
    
	var slidertestimonial = $('.bxslider');
	try{		
		slidertestimonial.bxSlider({
			mode: 'horizontal'
		});
	} catch(err) {
	}


$('.bx-blog').bxSlider({
  minSlides: 1,
  maxSlides: 3,
  slideWidth: 330,
  slideMargin: 20
});

});
/* 09 Form Validation
================================================== */
jQuery(document).ready(function ($) {
"use strict";
    $('.forms').dcSlickForms();
});
$(document).ready(function () {
"use strict";
    $('.comment-form input[title], .comment-form textarea').each(function () {
        if ($(this).val() === '') {
            $(this).val($(this).attr('title'));
        }

        $(this).focus(function () {
            if ($(this).val() == $(this).attr('title')) {
                $(this).val('').addClass('focused');
            }
        });
        $(this).blur(function () {
            if ($(this).val() === '') {
                $(this).val($(this).attr('title')).removeClass('focused');
            }
        });
    });
});
/* 10 Image Icon Hover
================================================== */
$(document).ready(function () {
"use strict";
    $('.icon-overlay a').prepend('<span class="icn-more"></span>');
});
/* 11 Parallax Mobiles
================================================== */
$(document).ready(function () {
"use strict";
    if (navigator.userAgent.match(/Android/i) ||
        navigator.userAgent.match(/webOS/i) ||
        navigator.userAgent.match(/iPhone/i) ||
        navigator.userAgent.match(/iPad/i) ||
        navigator.userAgent.match(/iPod/i) ||
        navigator.userAgent.match(/BlackBerry/i)) {
        $('.parallax').addClass('mobile');
    }
});
/* 12 Tabs
================================================== */
$(document).ready(function () {
"use strict";
    $('.tabs.services').easytabs({
        animationSpeed: 300,
        updateHash: false,
        cycle: 5000
    });
});
$(document).ready(function () {
"use strict";
    $('.tabs.tabs-top, .tabs.tabs-side').easytabs({
        animationSpeed: 300,
        updateHash: false
    });
});
/* 13 Data Rel
================================================== */
$('a[data-rel]').each(function () {
"use strict";
    $(this).attr('rel', $(this).data('rel'));
});
/* 14 Tooltip
================================================== */
$(document).ready(function () {
"use strict";
    if ($("[rel=tooltip]").length) {
        $("[rel=tooltip]").tooltip();
    }
});



		$('.hideme').bind('inview', function (event, visible) {
			if (visible === true) {
				var offset = $(this).offset();
				$(this).removeClass('hideme');
			}
		});
		$('.p-image-02').bind('inview', function (event, visible) {
			if (visible === true) {
				$('.dontHide').removeClass('hideme-slide');
			}
		});

		$('.newtr').bind('inview', function (event, visible) {
			if (visible === true) {
				$('.dontHide').removeClass('hideme-slide2');
			}
		});

/* 15 Fact Counter
================================================== */
		
	 $(document).ready(function () {
"use strict";	
	/* Counter */
    $.fn.countTo = function(options) {
        // merge the default plugin settings with the custom options
        options = $.extend({}, $.fn.countTo.defaults, options || {});

        // how many times to update the value, and how much to increment the value on each update
        var loops = Math.ceil(options.speed / options.refreshInterval),
            increment = (options.to - options.from) / loops;
			
        return $(this).each(function() {
            var _this = this,
                loopCount = 0,
                value = options.from,
                interval = setInterval(updateTimer, options.refreshInterval);

            function updateTimer() {
                value += increment;
                loopCount++;
                $(_this).html(value.toFixed(options.decimals));

                if (typeof(options.onUpdate) == 'function') {
                    options.onUpdate.call(_this, value);
                }

                if (loopCount >= loops) {
                    clearInterval(interval);
                    value = options.to;

                    if (typeof(options.onComplete) == 'function') {
                        options.onComplete.call(_this, value);
                    }
                }
            }
        })
    };
	

		var count=0;
		var dataperc;
		
		//mobile counter
		if($(window).width()>479){		
			$('.milestone-counter').bind('inview', function (event, visible) {
				if (visible === true & count===0) {
				// element is now visible in the viewport
				count++;
				$('.milestone-counter').each(function(){
					dataperc = $(this).attr('data-perc'),
					$(this).find('.milestone-count').delay(6000).countTo({
					from: 0,
					to: dataperc,
					speed: 2500,
					refreshInterval: 80
					});
				});
				} else {
				// element has gone out of viewport
				}
			});
		}else{
			$('.milestone-count.highlight').each(function(){
				$(this).html($(this).parent().attr('data-perc'))
			})
		}
		
	});
 
 
/* 16 Progress Bar
================================================== */
jQuery(document).ready(function() {
initProgress('.progress');

function initProgress(el){
	jQuery(el).each(function(){
		var pData = jQuery(this).data('progress');
		progress(pData,jQuery(this));
	});
}


			
function progress(percent, $element) {
	var progressBarWidth = 0;
	
	(function myLoop (i,max) {
		progressBarWidth = i * $element.width() / 100;
		setTimeout(function () {   
		$element.find('div').find('small').html(i+'%');
		$element.find('div').width(progressBarWidth);
		if (++i<=max) myLoop(i,max);     
		}, 10)
	})(0,percent);  
}	

});


/* 17 Flick Feeds
================================================== */
jQuery(document).ready(function() {
 $('.photo-stream, .grayscale').flickrfeed('52617155@N08','', {
        limit: 8,
        title: false,
        date: false
    });
});

jQuery(document).ready(function() {
$('.section-with-sidebar > .container > .row').imagesLoaded(function(){
		var sidebar = $(this).find(' > .sidebar') ,
		    content = $(this).find(' > .content') ,
			height = 0;
		if( content.outerHeight() > height ){ height = content.outerHeight() }	
		if( sidebar.outerHeight() > height ){ height = sidebar.outerHeight() }	
		sidebar.css("height",height+"px");
		content.css("height",height+"px");	
	
});	
});
/* Preloader
================================================== */
		$(window).load(function() { // makes sure the whole site is loaded
		"use strict";
			$('.ring').fadeOut(); // will first fade out the loading animation
			$('.loader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
			$('body').delay(350).css({'overflow':'visible'});
		})
/* 18 Right Sidebar Panel
================================================== */

    $('.nav-trigger').on('click', function(e) {

        e.preventDefault();

        $('#main-nav').toggleClass('active');

    });

    function nativiaNav() {
 
        var config = {
            $sections : $( 'section.on-menu' ),
            $navlinks : $( '#main-nav ul li' ),
            currentLink : 0,
            $body : $( 'html, body' ),
            animspeed : 1000,
            animeasing : 'easeInOutExpo'
        };

        function init() {

            if( $('#main-nav ul').hasClass('nav-disabled') ) {
                return false;
            }
     
            config.$navlinks.each(function(index){
                $(this).find('a').on( 'click', function() {
                    scrollAnim( config.$sections.eq(index).offset().top, this.hash );
                    return false;
                });
            });

            config.$sections.waypoint( function( direction ) {
                if( direction === 'down' ) { changeNav( $( this ) ); }
            }, { offset: '30%' } ).waypoint( function( direction ) {
                if( direction === 'up' ) { changeNav( $( this ) ); }
            }, { offset: '-30%' } );
     
            $( window ).on( 'debouncedresize', function() {
                scrollAnim( config.$sections.eq( config.currentLink ).offset().top );
            } );
             
        }
     
        function changeNav( $section ) {
            config.$navlinks.eq( config.currentLink ).removeClass( 'current' );
            config.currentLink = $section.index( 'section.on-menu' );
            config.$navlinks.eq( config.currentLink ).addClass( 'current' );
        }
     
        function scrollAnim( top, hash) {
            config.$body.stop().animate( { scrollTop : top }, config.animspeed, config.animeasing, function() {
                window.location.hash = hash;
            });
        }

        init();

    }

    nativiaNav();
	
 