$('#video header a, #video a.video-thumbnail').click(function() {
  $('#lightbox').show();
  return false;
});

$('#lightbox').click(function() {
  $('#lightbox').hide();
});

$(function() {
  if(navigator.platform.indexOf('Mac') != -1) {
    var video_id = '43823464';

    $('#downloadlink').attr('href','https://github.com/downloads/railsinstaller/railsinstaller-nix/RailsInstaller-1.0.0-osx-10.7.app.tgz');
    $('.vimeolink').attr('href','http://vimeo.com/' + video_id);
    $('.vimeoframe').attr('src','http://player.vimeo.com/video/' + video_id + '?byline=0&amp;portrait=0');
    $('#windows').hide();
    $('#osx').show();
  }

  if(navigator.platform.indexOf('Win') != -1) {
  }

  if(navigator.platform.indexOf('Linux') != -1) {
  }
});
