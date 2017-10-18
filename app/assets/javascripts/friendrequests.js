



$(document).ready(function () {
    // will call refreshPartial every 3 seconds
    //setInterval(refreshPartial, 3000)
});

function refreshPartial() {
  $.ajax({
    url: '/friendrequestcontroller/refresh_part'
 })
}
