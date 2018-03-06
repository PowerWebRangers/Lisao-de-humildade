
function checkPensiones(that) {

            if (that.value === "si") {

                 //INPUT
                var textBox = document.createElement('input');

                textBox.setAttribute("type", "text");
                textBox.setAttribute("placeholder", "Importe");
                textBox.setAttribute("id", "newTextBox");

                document.getElementById('pregunta1').appendChild(textBox);
                
                var txtPensiones = document.getElementById("demo").innerHTML = "Introduzca importe en euros.";
                
            }

            else {
               var box = document.getElementById('newTextBox');
   
                if (box){
                    box.parentNode.removeChild(box);
                    txtPensiones = document.getElementById("demo").innerHTML = " ";
                }
            }
}

function checkAnualidades(that) {

           if (that.value === "si") {

                 //INPUT
                var inputPagos2 = document.createElement('input');

                inputPagos2.setAttribute("type", "text");
                inputPagos2.setAttribute("placeholder", "Importe");
                inputPagos2.setAttribute("id", "newInputPagos2");

                document.getElementById('pregunta2').appendChild(inputPagos2);
                
                var txtAnualidades = document.getElementById("demo2").innerHTML = "Introduzca importe en euros.";
                
            }

            else {

               var box2 = document.getElementById('newInputPagos2');
   
                if (box2){
                    box2.parentNode.removeChild(box2);
                    txtAnualidades = document.getElementById("demo2").innerHTML = " ";
                }
            }

}


function checkVivienda(that) {

         if (that.value === "si") {

                 //INPUT
                var inputPagos3 = document.createElement('input');

                inputPagos3.setAttribute("type", "checkbox");
                inputPagos3.setAttribute("id", "newInputPagos3");

                document.getElementById('checkbox').appendChild(inputPagos3);
                
                var txtAnualidades2 = document.getElementById("demo3").innerHTML = "Estoy efectuando pagos por mi vivienda por los que voy a tener derecho a deducción por inversión en vivienda habitual en el IRPF y  las retribuciones íntegras en concepto de rendimientos del trabajo procedentes de todos los pagadores es inferior a 33.007,20 euros anuales.";
                
        }

            else {

               var box3 = document.getElementById('newInputPagos3');
   
                if (box3){
                    box3.parentNode.removeChild(box3);
                    txtAnualidades2 = document.getElementById("demo3").innerHTML = " ";
                }
            }

}

///----------------------------------------- SITUACION FAMILIAR -------------------------------------------------///
function checkCasado(that) {

            if (that.value === "no") {

            var txtCasado1 = document.getElementById("casado").innerHTML = "No rellene nada más. Por favor, continue al punto 3: Hijos y descencientes.";
            
            }

            else {
                    txtCasado1 = document.getElementById("casado").innerHTML = " ";
            }
}

function check1500(that){

     if (that.value === "si") {

                 //INPUT
                var textDNI = document.createElement('input');

                textDNI.setAttribute("type", "text");
                textDNI.setAttribute("placeholder", "DNI/NIF");
                textDNI.setAttribute("id", "newTextDNI");

                document.getElementById('situacion2').appendChild(textDNI);
                
                var txtPensiones = document.getElementById("1500txt").innerHTML = "Introduzca DNI/NIF.";
                
            }

            else {
               var boxDNI = document.getElementById('newTextDNI');
   
                if (boxDNI){
                    boxDNI.parentNode.removeChild(boxDNI);
                    txtPensiones = document.getElementById("1500txt").innerHTML = " ";
                }
            }

}
///----------------------------------------- TRABAJO -------------------------------------------------///
function checkTrabajo(that) {

            if (that.value === "no") {

            var txtTrabajo1 = document.getElementById("noDespl").innerHTML = "No rellene nada más. Por favor, continue al punto 6: Pagos.";
            
            }

            else {
                    txtTrabajo1 = document.getElementById("noDespl").innerHTML = " ";
            }
}

function checkTrabajo2(that) {
            if (that.value === "no") {
                var txtTrabajo2 = document.getElementById("no2Años").innerHTML = "No rellene nada más. Por favor, continue al punto 6: Pagos."; 
            }
            else {
                    txtTrabajo2 = document.getElementById("no2Años").innerHTML = " ";
            }
}

function checkTrabajo3(that) {
            if (that.value === "no") {
             var txtTrabajo3 = document.getElementById("noReten").innerHTML = "No rellene nada más. Por favor, continue al punto 6: Pagos.";
            }
            else {
                    txtTrabajo3 = document.getElementById("noReten").innerHTML = " ";
            }
}

function checkTrabajo4(that) {
   
            if (that.value === "no") {
                var txtTrabajo4 = document.getElementById("noReducc").innerHTML = "No rellene nada más. Por favor, continue al punto 6: Pagos.";
            }

            else {
                    txtTrabajo4 = document.getElementById("noReducc").innerHTML = " ";
            }
}