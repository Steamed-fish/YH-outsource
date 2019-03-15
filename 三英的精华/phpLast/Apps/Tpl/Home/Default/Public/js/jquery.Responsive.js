;

//alert($(window).height()>$(window).width())

$.fn.Responsive = function(options) {
	var defaults = {
		baseWidth : 1920,
		baseHeight : 1080
	};
	var settings = $.extend({}, defaults, options);
	
	function resize($o, settings){
		var windowWidth = $(window).width();
		var windowHeight = $(window).height();
		
		//console.log(1);
		var ratioX = windowWidth / settings.baseWidth;
		var ratioY = windowHeight / settings.baseHeight;
		
		if(ratioY>ratioX){
			ratioY = ratioX;
		}
		else{
			ratioX = ratioY;			
		}
		
		var w = $o.attr('data-width');
		w ? $o.width(w * ratioX) : w;

		var h = $o.attr('data-height');
		h ? $o.height(h* ratioY) : h;

		var t = $o.attr('data-top');
		//t ? $o.css('top', t * ratioY) : t;
		if(t){
			$o.css('top', windowHeight/2 - ratioY * ( settings.baseHeight/2 - t ));
		}
		
		var r = $o.attr('data-right');
		//r ? $o.css('right', r * ratioX) : r;
		if(r){
			$o.css('right', windowWidth/2 - ratioX * ( settings.baseWidth/2 - r ));
		}

		var b = $o.attr('data-bottom');
		//b ? $o.css('bottom', b * ratioY) : b;
		if(b){
			$o.css('bottom', windowHeight/2 - ratioY * ( settings.baseHeight/2 - b ));
		}
		
		var l = $o.attr('data-left');
		//l ? $o.css('left', l * ratioX) : l;		
		if(l){
			$o.css('left', windowWidth/2 - ratioX * ( settings.baseWidth/2 - l ));
		}
		
		var pt = $o.attr('data-ptop');
		pt ? $o.css('padding-top', pt * ratioY) : pt;
		
		var pr = $o.attr('data-pright');
		pr ? $o.css('padding-right', pr * ratioX) : pr;
		
		var pb = $o.attr('data-pbottom');
		pb ? $o.css('padding-bottom', pb * ratioY) : pb;
		
		var pl = $o.attr('data-pleft');
		pl ? $o.css('padding-left', pl * ratioX) : pl;
		
		var mt = $o.attr('data-mtop');
		mt ? $o.css('margin-top', mt * ratioY) : mt;
		
		var mr = $o.attr('data-mright');
		mr ? $o.css('margin-right', mr * ratioX) : mr;
		
		var mb = $o.attr('data-mbottom');
		mb ? $o.css('margin-bottom', mb * ratioY) : mb;
		
		var ml = $o.attr('data-mleft');
		ml ? $o.css('margin-left', ml * ratioX) : ml;
				
		var lh = $o.attr('data-lheight');
		lh ? $o.css('line-height', lh * ratioY +'px') : lh;
		
		var f = $o.attr('data-font');    
		f ? $o.css('font-size', f * ratioX) : f;
	}
	
	return this.each(function() {
		var $o = $(this);
		resize($o, settings);
		$(window).resize(function(){
			resize($o, settings);
		});
	});
}
