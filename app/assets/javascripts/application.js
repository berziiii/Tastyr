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

$('#meal-3-button').on('click', function () {
	$('#meal-5').addClass('hide');
	$('#meal-3').removeClass('hide');
	$('#meal-3-text').addClass('active');
	$('#meal-5-text').removeClass('active');
});

$('#meal-5-button').on('click', function () {
	$('#meal-3').addClass('hide');
	$('#meal-5').removeClass('hide');
	$('#meal-5-text').addClass('active');
	$('#meal-3-text').removeClass('active');
});
