$(document).ready(function() {
  logoH = $('#porfolio-home img').height();
  logoW = $('#porfolio-home img').width();
  if ( logoH > 400 && logoH > logoW ) {
    $('#porfolio-home img').height(400);
  } else if (logoW > 400 && logoH < logoW) {
    $('#porfolio-home img').width(400);
  }
});