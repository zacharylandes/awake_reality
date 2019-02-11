// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .



$(document).ready(function(){
  $(".mindful-card").click(function(){
    $(".mindful-card").addClass("elong", 4000, "easeOutBounce");
          $(".hero").slideUp(1000);
          $(".elong").click(function(){
            $(".hero").slideDown(1000);
            $(".mindful-card").removeClass("elong", 10000, "easeInBounce");
            location.reload()

          })
        });

        $(".restore-card").click(function(){
          $(".restore-card").addClass("elong", 4000, "easeOutBounce");
                $(".hero").slideUp(1000);
                $(".elong").click(function(){
                  $(".hero").slideDown(1000);
                  $(".restore-card").removeClass("elong", 10000, "easeInBounce");
                  location.reload()
                })
              });
});