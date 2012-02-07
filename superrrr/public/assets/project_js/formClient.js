$(document).ready(function() {
  //font cycle
 $('#navSliderPanel').cycle({
   fx: 'scrollHorz',
   timeout: 0,
   speed: 250
 });
  $('.layoutsNavPanel').click(function() {
    $('#navSliderPanel').cycle(1);
  });
  $('.backgroundsNavPanel').click(function() {
    $('#navSliderPanel').cycle(2);
  });
  $('.logosNavPanel').click(function() {
    $('#navSliderPanel').cycle(3);
  });
  $('.fontsNavPanel').click(function() {
    $('#navSliderPanel').cycle(4);
  });
  $('.backNavSliderPanel').click(function() {
    $('#navSliderPanel').cycle(0);
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
      $('#sidebar .porfolio-nav li a').css('font-size', ui.value + "px");
    }
  });
  
  //the modal
  $("#fontFamily").change(function() {
    $selectedFont = $(this).val();
    $("body").css('font-family', $selectedFont);
  });
  $( "#accordion" ).accordion({
    header: 'h3',
    autoHeight: false
    //navigation: true
    //fillSpace: true,
    //clearStyle: true,
    //collapsible: true,
    //active: 0,
  });
   
  $( "#dialog" ).hide();
  $.fx.speeds._default = 250;
  $(function() {
  	$( "#dialog" ).dialog({
  		autoOpen: false,
  		show: "fade",
  		hide: "fade",
  		zIndex: 50,
  		resizable: false,
  		width: 340
  	});
  
  	$( "#opener" ).click(function() {
  		//$( "#dialog" ).dialog( "open" );
  		$( "#dialog" ).parent().css({position:"fixed"}).end().dialog('open');
  		return false;
  	});
  });
});