
$(document).on('turbolinks:load', function() {

  $("#annotation-submit-button").click(function(event) {
  // do ajax call
  $.ajax(...);
  // disable the button
  $(this).prop("disabled", true);
  // prevent the standard action
  return false;
});

});
