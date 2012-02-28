$(document).ready(function() {
  
  $('.resize-dot').hide();
  $('.draggable').hover(function() {
    var $curElem = $(this);
    $curElem.find('.resize-dot').show();
  }, function() {
    var $curElem = $(this);
    $curElem.find('.resize-dot').hide();
  });
  
  //Radio button panel
  $('.backgroundR').change(function() {
    submitFrmEnableImage(1);
    var $btnClicked = $(this);
    $('.form_imgselect.themeBgRepeat.img').find('.background_repeat_val').val($btnClicked.val());
    $('.form_imgselect.themeBgRepeat.img').submit();
    var $imgSrc = $('#img_bg_val').attr('src');
    if ($btnClicked.val() == "fullscreen") {
      $('body').append('<img src="'+ $imgSrc +'" style="position: fixed; left: 0; top: 0; height: 100%; z-index: -1;" class="imgBGCustom" alt="imgBGCustom" />');
      //$.backstretch($imgSrc);
      //$('#backstretch').show();
    } else {
      $('#backstretch, .imgBGCustom').hide();
      $("body").css({
        backgroundRepeat: $btnClicked.val(),
        backgroundImage: "url("+ $imgSrc +")"
      });
    }
  });
  // on submit upldate for description content
  $('.form_imgselect.description').submit(function() {
    var $htmlContent = $('.form_imgselect.description').find('.wysiwyg').val()
    console.log( $htmlContent );
    $('#project_description_wrap').html($htmlContent);
  });
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
  

  //draggables //resize able
  $('#project_description_wrap')
    .draggable({
      cursor: 'move',
      handles: 'n, e, w, s',
      zIndex: 5,
      //scroll: false,
      // Find position where image is dropped.
      stop: function(event, ui) {
          //var Stoppos = $(this).position();
          $top = $(this).css('top').replace('px', '');
          $left = $(this).css('left').replace('px', '');
          $('.form_imgselect.projDescriptionXYPos').find('.left_pos_val').val(parseInt($left));
          $('.form_imgselect.projDescriptionXYPos').find('.top_pos_val').val(parseInt($top));
          $('.form_imgselect.projDescriptionXYPos').submit();
      }
    })
    .resizable({
      handles: "ne, se, sw, nw",
      resize: function(event, ui) {
        var topVal = parseInt($(this).css('top').replace('px', ''));
        $('#project_description_wrap').css({
          position: 'fixed',
          top: topVal
        });
      },
      stop: function(event, ui) {
        var height = ui.size.height;
        var width = ui.size.width;
        $('.form_imgselect.projDescriptionXYSize').find('.width_size_val').val(width);
        $('.form_imgselect.projDescriptionXYSize').find('.height_size_val').val(height);
        $('.form_imgselect.projDescriptionXYSize').submit();
      }
    });
    function getCurFontSize() {
      $curFontSize = parseFloat($('#sidebarNavigation ul li a').css('fontSize').replace('px', ''));
    }
    getCurFontSize();
  $('#sidebarNavigation').draggable({
    cursor: 'move',
    handles: 'n, e, w, s',
    zIndex: 10,
    scroll: false,
    stop: function(event, ui) {
        //var Stoppos = $(this).position();
        $left = $(this).css('left').replace('px', '');
        $top = $(this).css('top').replace('px', '');
        $('.form_imgselect.projNavXYPos').find('.proj_nav_left_pos_val').val(parseInt($left));
        $('.form_imgselect.projNavXYPos').find('.proj_nav_top_pos_val').val(parseInt($top));
        $('.form_imgselect.projNavXYPos').submit();
    }
  }).resizable({
      handles: "ne, se, sw, nw",
      resize: function(event, ui) {
        var topVal = parseInt($("#sidebarHeader").css('top').replace('px', ''));
        var leftVal = parseInt($("#sidebarHeader").css('left').replace('px', ''));
        $('#sidebarNavigation').css({
          position: 'fixed',
          top: topVal,
          left: leftVal
        });
        $percentageW = (ui.size.width / ui.originalSize.width);
        $percentageH = (ui.size.height / ui.originalSize.height);
        $percentage = $percentageH;
        $fontVal = Math.round($curFontSize * $percentage);
        console.log( $curFontSize );
        $('#sidebarNavigation ul li a').css({
          fontSize: $fontVal
        });
      },
      stop: function(event, ui) {
        var height = ui.size.height;
        var width = ui.size.width;
        getCurFontSize();
      }
    });
  $( "#sidebarHeader" ).draggable({
    cursor: 'move',
    handles: 'n, e, w, s',
    zIndex: 20,
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
  }).resizable({
      handles: "ne, se, sw, nw",
      resize: function(event, ui) {
        var topVal = parseInt($(this).css('top').replace('px', ''));
        $('#sidebarHeader').css({
          position: 'fixed',
          top: topVal
        });
        $('#sidebarHeader').find('img').width(ui.size.width);
      },
      stop: function(event, ui) {
        var height = ui.size.height;
        var width = ui.size.width;
        //$('.form_imgselect.projDescriptionXYSize').find('.width_size_val').val(width);
        //$('.form_imgselect.projDescriptionXYSize').find('.height_size_val').val(height);
        //$('.form_imgselect.projDescriptionXYSize').submit();
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
  //background image click event
  $('#set_background_image').click(function() {
		submitFrmEnableImage(1);
    var $bgval = $('#img_bg_val').attr('src');
    $('.form_imgselect.themeBgImg').find('.background_image_val').val($bgval);
    $('body').css({
      backgroundImage: "url("+ $bgval +")"
    });
    $('.form_imgselect.themeBgImg').submit();
  });
  //background texture click event
  $('.backgroundTexture').click(function() {
    submitFrmEnableImage(1);
    
    $('.form_imgselect.themeBgRepeat.img').find('.background_repeat_val').val("repeat");
    $('.form_imgselect.themeBgRepeat.img').submit();
    
    $('.imgBGCustom').hide();
    var filename = $(this).attr('id');
    $('.form_imgselect.themeBgImg').find('.background_image_val').val("/assets/styles/patterns/" + filename);
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
  $('.upload.subPanelButton').click(function() {
    $('#backgroundSub').cycle(2);
    return false;
  });
  
  //  //content cycle
  //  function onAfterSubContent(curr, next, opts, fwd) {
  //    var $ht = $(this).height();
  //    $(this).parents('#contentDescSlider').animate({height: $ht});
  //    var $htsa = $(this).parents('.slideArea').height();
  //    $('#navSliderPanel').height($htsa);
  //    $('#navSliderPanel').parent().animate({height: $htsa});
  //  }  
  //  
  //  //sub content cycle submenu
  //  $('#contentDescSlider').cycle({
  //   fx: 'scrollHorz',
  //   timeout: 0,
  //   fit: true,
  //   width: 270,
  //   after: onAfterSubContent,
  //   speed: 250
  //  });
  //  $('.content.subPanelButton').click(function() {
  //    $('#contentDescSlider').cycle(0);
  //    return false;
  //  });
  //  $('.content_options.subPanelButton').click(function() {
  //    $('#contentDescSlider').cycle(1);
  //    return false;
  //  });
  

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