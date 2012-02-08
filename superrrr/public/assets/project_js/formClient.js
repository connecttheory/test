$(document).ready(function() {
  //font cycle
  function onAfter(curr, next, opts, fwd) {
    var $ht = $(this).height();
    //set the container's height to that of the current slide
    $(this).parent().css({height: $ht});
    $(this).parent().parent().animate({height: $ht});
  }
  
  $('#navSliderPanel').cycle({
   fx: 'scrollHorz',
   timeout: 0,
   fit: true,
   width: 270,
   after: onAfter,
   speed: 250
  });

  $('.layoutsNavPanel').click(function() {
    $('#navSliderPanel').cycle(1);
    return false;
  });
  $('.backgroundsNavPanel').click(function() {
    $('#navSliderPanel').cycle(2);
    return false;
  });
  $('.logosNavPanel').click(function() {
    $('#navSliderPanel').cycle(3);
    return false;
  });
  $('.fontsNavPanel').click(function() {
    $('#navSliderPanel').cycle(4);
    return false;
  });
  $('.backNavSliderPanel').click(function() {
    $('#navSliderPanel').cycle(0);
    return false;
  });
 


  
  //font size
  $( "#slider" ).css({
    padding: '1px'
  });
  
  $( "#slider" ).slider({
    min: 0,
    max: 35,
    value: 12,
    change: function(event, ui) {
      $('.fontSize').text(ui.value);
      $(this).parents('.form_imgselect').find('.font_size_val').val(ui.value);
      $('#sidebar .porfolio-nav li a').css('font-size', ui.value + "px");
      $(this).parents('.form_imgselect').submit();
    }
  });
  
  //the modal
  $("#fontFamily").change(function() {
    $selectedFont = $(this).val();
    $(this).parents('.form_imgselect').find('.font_face_val').val($selectedFont);
    $("body").css('font-family', $selectedFont);
    $(this).parents('.form_imgselect').submit();
  });
  $( "#accordion" ).accordion({
    header: 'h3',
    autoHeight: false,
    //navigation: true
    //fillSpace: true
    //clearStyle: true,
    collapsible: true
    //active: 0,
  });
   
  $( "#dialog" ).hide();
  $.fx.speeds._default = 250;
  $(function() {
  	$("#dialog").dialog({
  		autoOpen: false,
  		show: "fade",
  		hide: "fade",
  		zIndex: 150,
  		resizable: false,
  		maxWidth: 300,
  		close: function(event, ui) { 
  		  $( "#controlPanelOpen" ).fadeIn();
  		}
  	});
  
  	$( "#controlPanelOpen" ).click(function() {
  		//$( "#dialog" ).dialog( "open" );
  		$( "#dialog" ).parent().css({position:"fixed"}).end().dialog('open');
  		$(this).fadeOut('fast');
  		return false;
  	});
  });
  
  $('.showhide').click(function() {
    $('#header').toggle();
  });
});