
$(document).on('turbolinks:load', function() {
  $(".use-address").click(sendAccpectRequest)
  $(".blocklists").click(sendRequestBlock)
});



function refreshPartial() {
  $.ajax({
    url: '/friendrequestcontroller/refresh_part'
 })
}


function sendRequestBlock() {

  var item = $(this).closest("tr")   // Finds the closest row <tr>
                     .find(".idBlockuser")     // Gets a descendent with class="nr"
                     .text();         // Retrieves the text within <td>

  var item1 = $(this);

  $.ajax({
    url: '/blocklists',
    type: 'POST',
    dataType: 'JSON',
    data:{
          iduserblock:item
    },
    success:function(data){

      if (data.alert == "success") {
        item1.closest("tr").find(".button-accpect").html('<button class="btn btn-danger" type="button" name="button">\
          <i class="fa fa-ban" aria-hidden="true"></i>\
        </button>');
        //$('#friendslistnavigation').text(data.dataresponse.length);
      } else {
        alert("Process send to server is error");
      }
    },
    error: function () {
      alert("Error in request to server");
    }
  });

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
