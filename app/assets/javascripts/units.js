
$(document).on ('ready page:load', function (event) {
  
  

  $("#comparar-btn").on("click", function (e) {
    // Cuando clickeas el boton
    var boton = $(this);
    var unit_id = boton.data('unit');
    var course_id = boton.data('course');
    var simulador = $('#simulador').val();

    $("#respuesta_box img").show();
    $.ajax ({ 
      url:"/courses/"+course_id+"/units/"+course_id+"/compare",
      method: 'POST',
      data: {simulador: simulador},
      dataType: "html",
      success: function(data) {
        $("#respuesta_box img").hide();
        $("#respuesta").html(data);
        // if(data.respuesta){
        //   $("#respuesta").html("Correcto");
        // }else{
        //   $("#respuesta").html("Incorrecto vuelve a intentarlo");
        // }
        
      }
      
    });

  });

  



});