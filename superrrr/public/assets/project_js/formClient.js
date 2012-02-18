$(document).ready(function() {
  //enable background @ panel client
  $('#enableBackgroundImage').change(function() {
    $(this).parents('.form_imgselect').find('.enable_background_image_val').val($(this).val());
    $('body').css({backgroundImage: 'none'});
    $(this).parents('.form_imgselect').submit();
  });
  //reset logo position
  $('.resetLogoPos').click(function(e) {
    e.preventDefault();
    console.log('clicked reset logo position');
    
    $('#sidebarHeader').css({
      position: 'fixed',
      left: 0,
      top: 0
    });
    $('.form_imgselect.logoXYPos').find('.logo_left_pos_val').val(0);
    $('.form_imgselect.logoXYPos').find('.logo_top_pos_val').val(0);
    $('.form_imgselect.logoXYPos').submit();
  });
  
  //draggables
  $('#sidebarNavigation').draggable({
   cursor: 'move',
    scroll: false,
    //containtment: $(document),
    // Find position where image is dropped.
    stop: function(event, ui) {
        var Stoppos = $(this).position();
        $top = $(this).css('top').replace('px', '');
        $('.form_imgselect.projNavXYPos').find('.proj_nav_left_pos_val').val(Stoppos.left);
        $('.form_imgselect.projNavXYPos').find('.proj_nav_top_pos_val').val(parseInt($top));
        $('.form_imgselect.projNavXYPos').submit();
    }
  });
  $( "#sidebarHeader" ).draggable({
    cursor: 'move',
    scroll: false,
    //containtment: $(document),
    // Find position where image is dropped.
    stop: function(event, ui) {
        // Show dropped position.
        $top = $(this).css('top').replace('px', '');
        var Stoppos = $(this).position();
        $('.form_imgselect.logoXYPos').find('.logo_left_pos_val').val(Stoppos.left);
        $('.form_imgselect.logoXYPos').find('.logo_top_pos_val').val(parseInt($top));
        if (Stoppos.top < -100) {
          alert('invalid value for logo position, not save!');
          $('#porfolio-home').css({
            position: 'relative',
            left: 0,
            top: 0
          });
          $('.form_imgselect.logoXYPos').find('.logo_left_pos_val').val(0);
          $('.form_imgselect.logoXYPos').find('.logo_top_pos_val').val(0);
          $('.form_imgselect.logoXYPos').submit();
        } else {
          
          $('.form_imgselect.logoXYPos').submit();
        }
        
    }
  });
  
  //background images  
  $('#backgroundAttachment').change(function() {
    $selectedVal = $(this).val();
    $('.form_imgselect.themeBgAttachment').find('.background_attachment_val').val($selectedVal);
    $("body").css('background-attachment', $selectedVal);
    $('.form_imgselect.themeBgAttachment').submit();
  });
  $('#backgroundPositionH').change(function() {
    $selectedVal = $(this).val();
    $('.form_imgselect.themeBgPositionH').find('.background_positionH_val').val($selectedVal);
    $("body").css('background-position-x', $selectedVal);
    $('.form_imgselect.themeBgPositionH').submit();
  });
  $('#backgroundPositionV').change(function() {
    $selectedVal = $(this).val();
    $('.form_imgselect.themeBgPositionV').find('.background_positionV_val').val($selectedVal);
    $("body").css('background-position-y', $selectedVal);
    $('.form_imgselect.themeBgPositionV').submit();
  });
  
  $('#backgroundRepeat').change(function() {
    $selectedVal = $(this).val();
    $('.form_imgselect.themeBgRepeat').find('.background_repeat_val').val($selectedVal);
    $("body").css('backgroundRepeat', $selectedVal);
    $('.form_imgselect.themeBgRepeat').submit();
  });
  
  $('.backgroundTexture').click(function() {
    var filename = $(this).attr('id');
    $('.form_imgselect.themeBgImg').find('.background_image_val').val(filename);
    $('body').css({
      backgroundImage: "url(/assets/styles/patterns/"+ filename +")",
      backgroundRepeat: "repeat"
    });
    $('.form_imgselect.themeBgImg').submit();
  });
  
  
  //background cycle
  function onAfterSubBG(curr, next, opts, fwd) {
    var $ht = $(this).height();
    $(this).parents('#backgroundSub').css({height: $ht});
    var $htsa = $(this).parents('.slideArea').height();
    $('#navSliderPanel').height($htsa);
    $('#navSliderPanel').parent().animate({height: $htsa});
  }  
  
  //sub layout cycle submenu
  $('#backgroundSub').cycle({
   fx: 'scrollHorz',
   timeout: 0,
   fit: true,
   width: 270,
   after: onAfterSubBG,
   speed: 250
  });
  $('.color.subPanelButton').click(function() {
    $('#backgroundSub').cycle(0);
    return false;
  });
  $('.texture.subPanelButton').click(function() {
    $('#backgroundSub').cycle(1);
    return false;
  });

  //font cycle
  function onAfterSub(curr, next, opts, fwd) {
    var $ht = $(this).height();
    $(this).parents('#layoutSub').css({height: $ht});
    var $htsa = $(this).parents('.slideArea').height();
    $('#navSliderPanel').height($htsa);
    $('#navSliderPanel').parent().animate({height: $htsa});
  }

  
  
  //sub layout cycle submenu
  $('#layoutSub').cycle({
   fx: 'scrollHorz',
   timeout: 0,
   fit: true,
   width: 270,
   after: onAfterSub,
   speed: 250
  });
  $('.available').click(function() {
    $('#layoutSub').cycle(0);
    return false;
  });
  $('.options').click(function() {
    $('#layoutSub').cycle(1);
    return false;
  });

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
  
  //sub layout options
  $( ".marginSlider.bottom" ).slider({
    min: 0,
    max: 100,
    value: 12,
    change: function(event, ui) {
      $('.marginBottomValue').text(ui.value);
      $('.image-block').css('marginBottom', ui.value + "px");
    }
  });
  $( "#marginSliderTop" ).slider({
    min: 0,
    max: 100,
    value: parseInt($('.marginTopValue').text()),
    change: function(event, ui) {
      $('.marginTopValue').text(ui.value);
      $('.margin_top_val').val(ui.value);
      $('.image-block').css('marginTop', ui.value + "px");
      $('.margin_top_val').parents('.form_imgselect').submit();
    }
  });
  $( "#marginSliderBottom" ).slider({
    min: 0,
    max: 100,
    value: parseInt($('.marginBottomValue').text()),
    change: function(event, ui) {
      $('.marginBottomValue').text(ui.value);
      $('.margin_bottom_val').val(ui.value);
      $('.image-block').css('marginBottom', ui.value + "px");
      $('.margin_bottom_val').parents('.form_imgselect').submit();
    }
  });


  
  //font size
  $( "#slider" ).css({
    padding: '1px'
  });
  
  $( "#slider" ).slider({
    min: 0,
    max: 196,
    value: parseInt($('.fontSize').text()),
    change: function(event, ui) {
      $('.fontSize').text(ui.value);
      $(this).parents('.form_imgselect').find('.font_size_val').val(ui.value);
      $('#sidebarNavigation .porfolio-nav li a').css('font-size', ui.value + "px");
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
    navigation: true,
    header: '.accordionH3',
    clearStyle: true,
    //fillSpace: true
    //clearStyle: true,
    collapsible: true
    //active: 0,
    //create: function(event, ui) { 
    //  $nsp = $('#navSliderPanel').find('div:first').height();
    //  $('#navSliderPanel').height($nsp);
    //  $('#navSliderPanel').parent().css({ height: $nsp});
    //}
  });
	$(".accordionH3").click(function(event){
		  window.location.hash=this.hash;
	 });	
	$('.slideArea .panel-menu a').click(function(event){
		  window.location.hash=this.hash;
	 });
   
  $( "#dialog" ).hide();
  $.fx.speeds._default = 250;
	$("#dialog").dialog({
		autoOpen: false,
		show: "fade",
		hide: "fade",
		zIndex: 150,
		resizable: false,
		maxWidth: 300,
		position: ['right','center'],
		open: function(event, ui) {
		  $( "#controlPanelOpen" ).fadeOut('fast');
		  $( "#dialog" ).parent().css({position:"fixed"});
		},
		close: function(event, ui) { 
		  $( "#controlPanelOpen" ).fadeIn();
		}
	});
	$("#dialog").dialog('open');

	$( "#controlPanelOpen" ).click(function() {
		//$( "#dialog" ).dialog( "open" );
		$( "#dialog" ).parent().css({position:"fixed"}).end().dialog('open');
		//$(this).fadeOut('fast');
		//return false;
	});
  $('.showhide').click(function() {
    $('#header').toggle();
  });
});