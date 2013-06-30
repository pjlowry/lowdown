/* ===================================================
 * Cascade
 * http://WebDesignCrowd.com
 * =================================================== 
 */

(function($){
 	$(function(){    
 	  
 	  /* Carousel */
 	  $('.carousel').carousel({
      interval: 4000
    });
    
    /* Scroll Spy / Smooth Scroll */    
    $('ul.nav').scrollspy();
    $('.nav li a, a.scroll').bind('click', function(e) {
       e.preventDefault();
       if ($(this).attr('href') == "#home") {
         $('html, body').stop().animate({ scrollTop: 0 }, 300);
       }
       else {
         // Check for hash
         if ($(this.hash).offset()) {
           // Minus 65 to offset for 70px of padding in blocks
           offset = $(this.hash).offset().top - 65;
           $('html, body').stop().animate({ scrollTop: offset }, 400);                    
         }
       }
    });
    // Back to Top
    $('.back-to-top, .brand').bind('click', function(e) {
       e.preventDefault();
       $('html, body').stop().animate({ scrollTop: 0 }, 300);
    });
    

 	}); // end of document ready
})(jQuery); // end of jQuery name space