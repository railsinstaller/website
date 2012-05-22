/*!
 * Entourage 1.0.0 - Automatic Download Tracking for Asynchronous Google Analytics
 *
 * Copyright (c) 2011 by Tian Valdemar Davis (http://techoctave.com/c7)
 * Licensed under the MIT (http://en.wikipedia.org/wiki/MIT_License) license.
 */
(function(){onload=function(){for(var a=document.links,b=0;b<a.length;b++)a[b].onclick=Entourage};Entourage=function(){var a=this.pathname;a.match(/\.doc$|\.eps$|\.jpg$|\.png$|\.svg$|\.xls$|\.ppt$|\.pdf$|\.xls$|\.zip$|\.txt$|\.vsd$|\.vxd$|\.js$|\.css$|\.rar$|\.exe$|\.dmg$|\.wma$|\.mov$|\.avi$|\.wmv$|\.mp3$/i)&&(a=GetFileName(a),_gaq.push(["_trackPageview","/download/"+a]))};GetFileName=function(a){a=a.substring(0,a.indexOf("#")==-1?a.length:a.indexOf("#"));a=a.substring(0,a.indexOf("?")==-1?a.length:
a.indexOf("?"));return a=a.substring(a.lastIndexOf("/")+1,a.length)}})();