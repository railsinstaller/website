/*******

	***	Anchor Slider by Cedric Dugas   ***
	*** Http://www.position-absolute.com ***
	
	Never have an anchor jumping your content, slide it.

	Don't forget to put an id to your anchor !
	You can use and modify this script for any project you want, but please leave this comment as credit.
	
*****/
$(document).ready(function(){$("a.anchorLink").anchorAnimate()}),jQuery.fn.anchorAnimate=function(e){return e=jQuery.extend({speed:1100},e),this.each(function(){var t=this;$(t).click(function(n){n.preventDefault();var r=window.location.href,i=$(t).attr("href"),s=$(i).offset().top;return $("html:not(:animated),body:not(:animated)").animate({scrollTop:s},e.speed,function(){window.location.hash=i}),!1})})};