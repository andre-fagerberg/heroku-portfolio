// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


ready = function() {

  var hashTagActive = "";
  $(".scroll").click(function (event) {
    if(hashTagActive != this.hash) {
      event.preventDefault();

        var dest = 0;
        if ($(this.hash).offset().top > $(document).height() - $(window).height()) {
          dest = $(document).height() - $(window).height();
        } else {
          dest = $(this.hash).offset().top;
        }
        //go to destination
        $('html,body').animate({
          scrollTop: dest
        }, 1500, 'swing');
        hashTagActive = this.hash;
      }
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);





