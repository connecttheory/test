/**
 * @classDescription	Load scripts or styles on-the-fly and with callback functions.
 *						This is based off an example from Steve Souder's book:
 *						"Even Faster Web Sites", http://stevesouders.com/efws/loadscripts-diff.php?t=1270670045
 *
 * @version				1.0.0
 *
 * @author				Rob LaPlaca	- rob.laplaca@gmail.com
 *
 * @date				04/06/2010
 * @lastUpdate			04/06/2010 
 * 
 */
(function($){
	var undefined;
	
	$.AssetLoader = function() {
		var loadedScripts = [], 
			self = this;
		
		/* >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
		 * start:public
		 * >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> */
		
		/**
		 * Load a group of scripts or styles... or both
		 *
		 * @param	array		group - script/style objects
		 * @param	function	cbf - called when all the items are loaded
 		 * @return	null
		 */   
		this.loadPackage = function(pkg, cbf) {
			var len = pkg.length,
				i = 0;
			
			function inc() { 
				i++; 
				(len != i) ? loadTest() : cbf();	
			}
			
			function loadTest() {
				if(typeof pkg[i] != "string") {
					self.loadStyle(pkg[i][0], inc, pkg[i][1]);
				} else {
					self.loadScript(pkg[i], inc);
				}	
			}
			
			loadTest();
		};
		
		/**
		 * Loads a new script onto the page
		 *
		 * @param	string		src - url of the script you want to load
		 * @param	function	cbf - function that gets called when load is complete
 		 * @return	null
		 */   
		this.loadScript = function(src, cbf) {
			
			for(var i=0; i<loadedScripts.length; i++) {
				if(loadedScripts[i] == src) {
					cbf();
					return;
				}
			}
			
			var domscript = document.createElement("script");
				domscript.src = src;
				
			if(cbf) {	
				domscript.onloadDone = false;
				domscript.onload = function() {
					if ( ! domscript.onloadDone ) {
						domscript.onloadDone = true;
						loadedScripts.push(src);
						cbf();
					}
				};
				domscript.onreadystatechange = function() {
					if ( ( "loaded" === domscript.readyState || "complete" === domscript.readyState ) && ! domscript.onloadDone ) {
						domscript.onloadDone = true;
						loadedScripts.push(src);
						cbf();
					}
				};
			}
			
			document.getElementsByTagName("head")[0].appendChild(domscript);
		}
		
		/**
		 * Loads a new stylesheet onto the page
		 *
		 * @param	string		src - the url of the stylesheet you want to load
		 * @param	function	cbf - function that gets called when load is complete
		 * @param	string		id - a reference to an id in the CSS with style display: "none"
		 *							that is used to determine when the stylesheet has loaded
 		 * @return	null
		 */   
		this.loadStyle = function(href, cbf, id) {

			var css = document.createElement("link");
			css.setAttribute("rel", "stylesheet");
			css.setAttribute("type", "text/css");
			css.setAttribute("href", href);
			
			document.getElementsByTagName("head")[0].appendChild(css);
			
			if(cbf) { 
				var marker = document.createElement("div");
				marker.id = id;
				document.getElementsByTagName("body")[0].appendChild(marker);
				
				var interval = setInterval(function() {
					if($("#" + marker.id).css("display") == "none") {
						clearInterval(interval);
						$("#" + marker.id).remove();
						cbf();
					}
				}, 25);
			}
			
		}
		// end:public
	};	
	
})(jQuery);