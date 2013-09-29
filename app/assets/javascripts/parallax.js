$(document).ready(function() {
  $('.parallax').each(function() {
    var $obj = $(this);
    var orig_coords = $obj.position();
    var speed = $obj.data('scroll-speed') ? $obj.data('scroll-speed') : 0.5;

    $(window).scroll(function() {
      var yPos = $(this).scrollTop() * speed; 
      var coords = '50% '+ yPos + 'px';
      $obj.css({ backgroundPosition: coords });
    });
  });
}); 
