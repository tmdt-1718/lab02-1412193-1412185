//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).on('turbolinks:load', function() {
  
  $('#courrier-examen').summernote({
      lang: 'ko-KR',
      height: 300,
      onImageUpload: function(files, editor, welEditable) {
                  alert("hello abcs")
                 for (var i = files.length - 1; i >= 0; i--) {
                 sendFile(files[i], this);
              }
        }
  });

});
