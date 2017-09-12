'use strict';

function sidebarNav() {
  var $body = $('body');

  if (window.innerWidth < 768) {
    $body.removeClass('offcanvas-visible');
    $('#offcanvas-toggler').parent().addClass('active');
  }

  // Handler to toggle sidebar visibility on desktop
  $('#offcanvas-toggler').click(function(e) {
    e.preventDefault();
    $body.toggleClass('offcanvas-visible');
    // toggle icon state
    $(this).parent().toggleClass('active');
  });

  // reset on resize
  window.addEventListener('resize', function() {
    if (window.innerWidth < 768) {
      $body.removeClass('offcanvas-visible');
      $('#offcanvas-toggler').parent().addClass('active');
    }
  });

}

$(document).on('ready page:load', function() {
  sidebarNav();
});
