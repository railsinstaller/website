$('#video header a, #video a.video-thumbnail').click(function() {
  $('#lightbox').show();
  return false;
});

$('#lightbox').click(function() {
  $('#lightbox').hide();
});

$(function() {
  var mac_video_id = '43823464';

  if(navigator.platform.indexOf('Mac') != -1) {
    if(navigator.userAgent.match(/Mac OS X 10.6/i)) {
      $('#downloadlink').attr('href',$('osx106download').attr('href'));
    } else {
      $('#downloadlink').attr('href',$('osx107download').attr('href'));
    }
    $('.vimeolink').attr('href','http://vimeo.com/' + mac_video_id);
    $('.vimeoframe').attr('src','http://player.vimeo.com/video/' + mac_video_id + '?byline=0&amp;portrait=0');
    $('#windows').hide();
    $('#osx').show();
  }

  if(navigator.platform.indexOf('Win') != -1) {
  }

  if(navigator.platform.indexOf('Linux') != -1) {
    $('#downloadlink').attr('href',$('#osx107download').attr('href'));
    $('.vimeolink').attr('href','http://vimeo.com/' + mac_video_id);
    $('.vimeoframe').attr('src','http://player.vimeo.com/video/' + mac_video_id + '?byline=0&amp;portrait=0');
    $('#osx').after($('#windows'));
  }
});
