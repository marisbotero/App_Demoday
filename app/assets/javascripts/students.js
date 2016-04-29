
$(document).on ('ready page:load', function (event) {

  $.ajax ({ 
    url:"/students",
    method: 'GET',
    success: function(response) {
    	$("#list").html (response);
    }
    
  });



});