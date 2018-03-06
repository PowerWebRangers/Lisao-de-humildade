  $(document).ready(function(){
      $(".imagenes img").click(function(){
        $("#texto").html($(this).attr("title"));
      });
    });