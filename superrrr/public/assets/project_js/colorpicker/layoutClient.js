(function($){
	var initLayout = function() {
		var hash = window.location.hash.replace('#', '');
		var currentTab = $('ul.navigationTabs a')
							.bind('click', showTab)
							.filter('a[rel=' + hash + ']');
		if (currentTab.size() == 0) {
			currentTab = $('ul.navigationTabs a:first');
		}
		showTab.apply(currentTab.get(0));
		//$('#colorpickerHolder').ColorPicker({flat: true});
		$('#colorpickerHolder2').ColorPicker({
			flat: true,
			color: '#00ff00',
			onSubmit: function(hsb, hex, rgb) {
				$('#colorSelector2 div').css('backgroundColor', '#' + hex);
			}
		});
		$('#colorpickerHolder2>div').css('position', 'absolute');
		var widt = false;
		$('#colorSelector2').bind('click', function() {
			$('#colorpickerHolder2').stop().animate({height: widt ? 0 : 173}, 500);
			widt = !widt;
		});
		$('#colorpickerField1, #colorpickerField2, #colorpickerField3').ColorPicker({
			onSubmit: function(hsb, hex, rgb, el) {
				$(el).val(hex);
				$(el).ColorPickerHide();
			},
			onBeforeShow: function () {
				$(this).ColorPickerSetColor(this.value);
			}
		})
		.bind('keyup', function(){
			$(this).ColorPickerSetColor(this.value);
		});

		//BG color Description Wrap
		$('#colorSelectorBgDescription').ColorPicker({
			color: '#0000ff',
			livePreview: false,
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				$("#colorSelectorBgDescription").parents('.form_imgselect').submit();
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				$('#colorSelectorBgDescription div').css('backgroundColor', '#' + hex);
				$("#colorSelectorBgDescription").parents('.form_imgselect').find('.bg_color_description_val').val(hex);
				$('#project_description_wrap').css('backgroundColor', '#' + hex);
			},
        	onSubmit: function (hsb, hex, rgb, el) {
        	    $(el).ColorPickerHide();
			}
		});
		
		//Font color Description Wrap
		$('#colorSelectorFColorDescription').ColorPicker({
			color: '#0000ff',
			livePreview: false,
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				$("#colorSelectorFColorDescription").parents('.form_imgselect').submit();
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				$('#colorSelectorFColorDescription div').css('backgroundColor', '#' + hex);
				$("#colorSelectorFColorDescription").parents('.form_imgselect').find('.font_color_description_val').val(hex);
				$('#project_description_wrap').css('color', '#' + hex);
			},
        	onSubmit: function (hsb, hex, rgb, el) {
        	    $(el).ColorPickerHide();
			}
		});
		
		//BG color
		$('#colorSelector').ColorPicker({
			color: '#0000ff',
			livePreview: false,
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
        submitFrmEnableImage(0);
				$("#colorSelector").parents('.form_imgselect').submit();
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				$('#colorSelector div').css('backgroundColor', '#' + hex);
				$("#colorSelector").parents('.form_imgselect').find('.project_bg_val').val(hex);
				$('.imgBGCustom').hide();
				$('body').css({
				  backgroundColor: '#' + hex,
				  backgroundImage: 'none'
			  });
			},
        	onSubmit: function (hsb, hex, rgb, el) {
        	    $(el).ColorPickerHide();
			}
		});
		
		//Footer color
		$('#colorSelectorFooter').ColorPicker({
			color: '#0000ff',
			livePreview: false,
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				$("#colorSelectorFooter").parents('.form_imgselect').submit();
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				$('#colorSelectorFooter div').css('backgroundColor', '#' + hex);
				$("#colorSelectorFooter").parents('.form_imgselect').find('.footer_bg_val').val(hex);
				$('#footer_sm').css('backgroundColor', '#' + hex);
			},
        	onSubmit: function (hsb, hex, rgb, el) {
        	    $(el).ColorPickerHide();
			}
		});
		//Footer Font color
		$('#colorSelectorFooterFontColor').ColorPicker({
			color: '#0000ff',
			livePreview: false,
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				$("#colorSelectorFooterFontColor").parents('.form_imgselect').submit();
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				$('#colorSelectorFooterFontColor div').css('backgroundColor', '#' + hex);
				$("#colorSelectorFooterFontColor").parents('.form_imgselect').find('.font_color_footer_val').val(hex);
				$('#footer_sm a').css('color', '#' + hex);
			},
      onSubmit: function (hsb, hex, rgb, el) {
        	    $(el).ColorPickerHide();
			}
		});
		
		//font color
		$('#colorSelectorFont').ColorPicker({
			color: '#0000ff',
			livePreview: false,
			onShow: function (colpkr) {
				$(colpkr).fadeIn(500);
				return false;
			},
			onHide: function (colpkr) {
				$(colpkr).fadeOut(500);
				$("#colorSelectorFont").parents('.form_imgselect').submit();
				return false;
			},
			onChange: function (hsb, hex, rgb) {
				$('#colorSelectorFont div').css('backgroundColor', '#' + hex);
				$("#colorSelectorFont").parents('.form_imgselect').find('.font_color_val').val(hex);
				$('body, navigation a, .porfolio-nav li a').css('color', '#' + hex);
			},
        	onSubmit: function (hsb, hex, rgb, el) {
        	    $(el).ColorPickerHide();
			}
		});
		
	};
	
	var showTab = function(e) {
		var tabIndex = $('ul.navigationTabs a')
							.removeClass('active')
							.index(this);
		$(this)
			.addClass('active')
			.blur();
		$('div.tab')
			.hide()
				.eq(tabIndex)
				.show();
	};
	
	EYE.register(initLayout, 'init');
})(jQuery)