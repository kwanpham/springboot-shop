$(document).ready(function() {

    var owl = $("#owl-product1");

    owl.owlCarousel({
        items: 5, //10 items above 1000px browser width
        itemsDesktop: [1000, 5], //5 items between 1000px and 901px
        itemsDesktopSmall: [900, 3], // betweem 900px and 601px
        itemsTablet: [600, 2], //2 items between 600 and 0
        itemsMobile: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>']
    });
});
$(document).ready(function() {

    var owl = $("#owl-product2");

    owl.owlCarousel({
        items: 5, //10 items above 1000px browser width
        itemsDesktop: [1000, 5], //5 items between 1000px and 901px
        itemsDesktopSmall: [900, 3], // betweem 900px and 601px
        itemsTablet: [600, 2], //2 items between 600 and 0
        itemsMobile: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>']
    });
});
$(document).ready(function() {

    var owl = $("#owl-product3");

    owl.owlCarousel({
        items: 5, //10 items above 1000px browser width
        itemsDesktop: [1000, 5], //5 items between 1000px and 901px
        itemsDesktopSmall: [900, 3], // betweem 900px and 601px
        itemsTablet: [600, 2], //2 items between 600 and 0
        itemsMobile: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>']
    });
});
$(document).ready(function() {

    var owl = $("#owl-product4");

    owl.owlCarousel({
        items: 5, //10 items above 1000px browser width
        itemsDesktop: [1000, 5], //5 items between 1000px and 901px
        itemsDesktopSmall: [900, 3], // betweem 900px and 601px
        itemsTablet: [600, 2], //2 items between 600 and 0
        itemsMobile: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>']
    });
});
$(document).ready(function() {

    var owl = $("#owl-product5");

    owl.owlCarousel({
        items: 5, //10 items above 1000px browser width
        itemsDesktop: [1000, 5], //5 items between 1000px and 901px
        itemsDesktopSmall: [900, 3], // betweem 900px and 601px
        itemsTablet: [600, 2], //2 items between 600 and 0
        itemsMobile: false,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>']
    });
});
$(document).ready(function() {
    var owl = $("#owl-demo");
    owl.owlCarousel({
        autoPlay: 3000,
        items: 5, //10 items above 1000px browser width
        itemsDesktop: [1000, 5], //5 items between 1000px and 901px
        loop: true,
        itemsDesktopSmall: [900, 3], // betweem 900px and 601px
        itemsTablet: [600, 2], //2 items between 600 and 0
        itemsMobile: false, // itemsMobile disabled - inherit from itemsTablet option,
        nav: true,
        navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>']
    });
});
jQuery(document).ready(function($) {
    if ("ontouchstart" in document.documentElement) {
        $('#slider').nivoSlider({
            effect: 'random', // Specify sets like: 'fold,fade,sliceDown'
            slices: 15, // For slice animations
            boxCols: 8, // For box animations
            boxRows: 4, // For box animations
            animSpeed: 500, // Slide transition speed
            pauseTime: 3000, // How long each slide will show
            startSlide: 3, // Set starting Slide (0 index)
            directionNav: true, // Next & Prev navigation
            directionNavHide: true, // Only show on hover
            controlNav: false, // 1,2,3... navigation
            controlNavThumbs: false, // Use thumbnails for Control Nav
            controlNavThumbsFromRel: false, // Use image rel for thumbs
            controlNavThumbsSearch: '', // Replace this with...
            controlNavThumbsReplace: '', // ...this in thumb Image src
            keyboardNav: true, // Use left &  right arrows
            pauseOnHover: true, // Stop animation while hovering
            manualAdvance: false, // Force manual transitions
            captionOpacity: 0.8, // Universal caption opacity
            prevText: 'Prev', // Prev directionNav text
            nextText: 'Next', // Next directionNav text
            beforeChange: function() {}, // Triggers before a slide transition
            afterChange: function() {}, // Triggers after a slide transition
            slideshowEnd: function() {}, // Triggers after all slides have been shown
            lastSlide: function() {}, // Triggers when last slide is shown
            afterLoad: function() {} // Triggers when slider has loaded
        });
        var element = document.getElementById('slider');
        var hammertime = Hammer(element).on("swipeleft", function(event) {
            $('#slider img').attr("data-transition", "slideInLeft");
            $('a.nivo-nextNav').trigger('click');
            return false;
        });
        var hammertime = Hammer(element).on("swiperight", function(event) {
            $('#slider img').attr("data-transition", "slideInRight");
            $('a.nivo-prevNav').trigger('click');
            $('#slider img').attr("data-transition", "slideInLeft");
            return false;

        });
    } else {
        $('#slider').nivoSlider({
            effect: 'random', // Specify sets like: 'fold,fade,sliceDown'
            slices: 15, // For slice animations
            boxCols: 8, // For box animations
            boxRows: 4, // For box animations
            animSpeed: 500, // Slide transition speed
            pauseTime: 3000, // How long each slide will show
            startSlide: 3, // Set starting Slide (0 index)
            directionNav: true, // Next & Prev navigation
            directionNavHide: true, // Only show on hover
            controlNav: false, // 1,2,3... navigation
            controlNavThumbs: false, // Use thumbnails for Control Nav
            controlNavThumbsFromRel: false, // Use image rel for thumbs
            controlNavThumbsSearch: '', // Replace this with...
            controlNavThumbsReplace: '', // ...this in thumb Image src
            keyboardNav: true, // Use left & right arrows
            pauseOnHover: true, // Stop animation while hovering
            manualAdvance: false, // Force manual transitions
            captionOpacity: 0.8, // Universal caption opacity
            prevText: 'Prev', // Prev directionNav text
            nextText: 'Next', // Next directionNav text
            beforeChange: function() {}, // Triggers before a slide transition
            afterChange: function() {}, // Triggers after a slide transition
            slideshowEnd: function() {}, // Triggers after all slides have been shown
            lastSlide: function() {}, // Triggers when last slide is shown
            afterLoad: function() {} // Triggers when slider has loaded
        });
    }
});