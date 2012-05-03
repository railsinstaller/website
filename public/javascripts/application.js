$('#video header a, #video a.video-thumbnail').click(function() {
  $('#lightbox').show();
  return false;
});

$('#lightbox').click(function() {
  $('#lightbox').hide();
});

$(function() {
  if(navigator.platform.indexOf('Mac') != -1) {
    $('#downloadlink').attr('href','https://github.com/downloads/railsinstaller/railsinstaller-nix/RailsInstaller-1.0.0-osx-10.7.app.tgz');
    $('#windows').hide();
    $('#osx').show();
  }

  if(navigator.platform.indexOf('Win') != -1) {
  }

  if(navigator.platform.indexOf('Linux') != -1) {
  }
});
