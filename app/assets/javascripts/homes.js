//# Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function() {

    $('table tr').hover(function() {
        $(this).addClass('hover');
    }, function() {
        $(this).removeClass('hover');
    });

    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});
