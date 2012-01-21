
$(document).ready(function() {
	

	//JS Slide Show
		var slide_time = 5	
		$(document).everyTime(slide_time * 1000, "auto_slide", function(i) {
			slideTime();
		}, 0);
		
		var currImg = 1;
		var numSlides = $("#slide-img img").size();
		function slideTime(){
			$("#main_img" + currImg).fadeOut("slow");			
			if(currImg < numSlides) {
				currImg++
			} else{
				currImg = 1
			}
			$("#main_img" + currImg).fadeIn("slow");
		}
				
		//Slideshow Thumbnails JS
		$(".scrollable .items img").click(function (){
			$(document).stopTime("auto_slide");
			$("#main_img" + currImg).fadeOut("slow");
			currImg = $(".scrollable .items img").index(this) + 1;
			$("#main_img" + currImg).fadeIn("slow");
			$(document).everyTime(slide_time * 1000, "auto_slide", function(i) {
				slideTime();
			}, 0);
		});
		
		//Show slideshow thumbnails
		$("#slideshow-content2").toggle(function(){
			$("#slideshow-structures").show("fast");
		},
		function(){
			$("#slideshow-structures2").hide("fast");
		});
		
		$(".scrollable").scrollable();
		
		
		
		/*
		alert(get_height_js('https://teststorage123.s3.amazonaws.com/uploads/image/carimage/442/send-me-a-quote.png'));
		
		function get_height_js(imageSource) {
			var img = new Image();
			img.onload = function() {
			   var height = this.height;
			  //alert(this.width + 'x' + this.height);
			}
			img.src = imageSource;
		} */
});