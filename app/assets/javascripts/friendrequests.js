
$(document).on('turbolinks:load', function() {
  $(".use-address").click(sendAccpectRequest)

});
function refreshPartial() {
  $.ajax({
    url: '/friendrequestcontroller/refresh_part'
 })
}

function sendAccpectRequest() {
  var item = $(this).closest("tr")   // Finds the closest row <tr>
                     .find(".friendrequestid")     // Gets a descendent with class="nr"
                     .text();         // Retrieves the text within <td>
  var item1 = $(this);

   $.ajax({
   url: 'friendrequestcontroller/update_status',
   type: 'POST',
   dataType: 'JSON',
   data:{
         idfriendrequest:item
   },
   success:function(data){
     if (data.alert == "success") {
       item1.closest("tr").find(".button-accpect").html("<p style='color:#007bff;'>You accpected</p>");
       $('#friendslistnavigation').text(data.dataresponse.length);
     } else {
       alert("Process send to server is error");
     }
   },
   error: function () {
     alert("Error in request to server");
   }
 });
}
