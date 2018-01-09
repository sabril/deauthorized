$(window).ready(function() {

  var loc = window.location.href;

  if (/signin/.test(loc)) {
    $('body').addClass('light-header');
  }
  else  if (/about_us/.test(loc)) {
    $('body').addClass('dark-header');
  }
  else  if (/about_us/.test(loc)) {
    $('body').addClass('dark-header');
  }
  else  if (/privacy_policy/.test(loc)) {
    $('body').addClass('dark-header');
  }
  else  if (/terms_of_service/.test(loc)) {
    $('body').addClass('dark-header');
  }
  else  if (/pricing/.test(loc)) {
    $('body').addClass('dark-header');
  }
  else  if (/contact/.test(loc)) {
    $('body').addClass('dark-header');
  }
  // else  if (/consumers/.test(loc)) {
  //   $('body').addClass('dark-header');
  // }
  // else  if (/enterprises/.test(loc)) {
  //   $('body').addClass('dark-header');
  // }

  $(document).scroll(function () {
    var $nav = $(".navbar-fixed-top");
    var $link = $(".navbar-nav>li>a");
    $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
    $link.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
  });


});
