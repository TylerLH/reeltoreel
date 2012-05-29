// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

jQuery.fn.submitWithAjax = function() {
  this.submit(function() {
    $.ajax({
      type: "POST",
      url: "/subscribes",
      data: $("#new_subscribe").serialize(),
      error: function(data) { $("#subscribe-alerts").html('Error - That number is already registered or in an incorrect format.');},
      success: function(data) { $("#subscribe-alerts").html('You have successfully registered for the SMS messaging service.');},
      complete: function() {},
      dataType: "json"
    });
    return false;
  });
};

$(document).ready(function() {
  $("#new_subscribe").submitWithAjax();
})
