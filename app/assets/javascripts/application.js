//= require jquery
//= require jquery_ujs
//= require_self
//= require_tree .
$(function() {

  if(navigator.platform.indexOf('Mac') != -1) {
    if(navigator.userAgent.match(/Mac OS X 10.6/i)) {
      $('#downloadlink').attr('href',$('#osx106download').attr('href'));
    } else {
      $('#downloadlink').attr('href',$('#osx107download').attr('href'));
    }
    $('#windows').hide();
    $('#osx').show();
  }

  if(navigator.platform.indexOf('Win') != -1) {
  }

  if(navigator.platform.indexOf('Linux') != -1) {
    $('#downloadlink').attr('href',$('#osx107download').attr('href'));
    $('#osx').after($('#windows'));
  }
});
