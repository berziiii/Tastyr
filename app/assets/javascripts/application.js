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
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


$('#register').on('click', function () {
  $('#modal').modal('show')
});

$('#register-responsive').on('click', function () {
  $('#modal').modal('show')
});

$('#nav-hamburger').on('click', function () {
	$('#nav-collapse').collapse('toggle');
});

$("#dash-search-icon-1" ).on("click", function () {
	$("#dash-search-1").removeClass("hide");
	$("#dash-drop-1").addClass("hide");
});

$("#dash-search-icon-2" ).on("click", function () {
	$("#dash-search-2").removeClass("hide");
	$("#dash-drop-2").addClass("hide");
});

$("#dash-search-icon-3" ).on("click", function () {
	$("#dash-search-3").removeClass("hide");
	$("#dash-drop-3").addClass("hide");
});

// $('search-bar').on('click', fucntion() {
// 	$('.search-bar input[type=search]').val($('.search-bar input[type=search]').val().replace(/ /g, '+'));
// });

