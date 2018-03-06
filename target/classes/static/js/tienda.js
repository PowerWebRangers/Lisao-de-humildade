var options = {
      autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "explode",
        duration: 1000
      }
    };

$( "#dialog1" ).dialog(options);
 
    $( "#buy1" ).on( "click", function() {
      $( "#dialog1" ).dialog( "open" );
    });
