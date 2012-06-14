$('#video header a, #video a.video-thumbnail').click(function() {
  $('#lightbox').show();
  return false;
});

$('#lightbox').click(function() {
  $('#lightbox').hide();
});

$(function() {
  if(navigator.platform.indexOf('Mac') != -1) {
    if(navigator.userAgent.match(/Mac OS X 10.6/i)) {
      $('#downloadlink').attr('href',$('osx106download').attr('href'));
    } else {
      $('#downloadlink').attr('href',$('osx107download').attr('href'));
    }
    $('.vimeolink').attr('href','http://vimeo.com/43823464');
    $('.vimeoframe').attr('src','http://player.vimeo.com/video/43823464?byline=0&amp;portrait=0');
    $('#windows').hide();
    $('#osx').show();
  }

  if(navigator.platform.indexOf('Win') != -1) {
  }

  if(navigator.platform.indexOf('Linux') != -1) {
    $('#downloadlink').attr('href',$('#osx107download').attr('href'));
    $('.vimeolink').attr('href','http://vimeo.com/43823464');
    $('.vimeoframe').attr('src','http://player.vimeo.com/video/43823464?byline=0&amp;portrait=0');
    $('#osx').after($('#windows'));
  }
});
