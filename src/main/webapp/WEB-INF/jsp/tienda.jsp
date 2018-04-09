<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<div class= "container panel-overview borders">

      <div class="page-header ">
        <h1>Tienda</h1>
      </div>
          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder ">
             
              <img class = "img-thumbnail" src="${s}/img/bolaFuego.png" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">      

              <h4>Bola de fuego</h4>
              <span class="text-muted">         
                 <a href="#myCarousel" role="button" data-slide-to="0"> <button type="button" class="btn btn-success">Información</button></a>
              </span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img class = "img-thumbnail" src="${s}/img/heal-jade-3.png" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Curación</h4>
              <span class="text-muted">   
               <a href="#myCarousel" role="button" data-slide-to="1">  <button type="button" class="btn btn-success">Información</button></a>
              </span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img class = "img-thumbnail" src="${s}/img/enchant-acid-3.png" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Boom Caboom</h4>
              <span class="text-muted">               
                  <a href="#myCarousel" role="button" data-slide-to="2"> <button type="button" class="btn btn-success">Información</button></a>
              </span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img class = "img-thumbnail" src="${s}/img/enchant-blue-3.png" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Puñalada</h4>
              <span class="text-muted">            
               <a href="#myCarousel" role="button" data-slide-to="3">  <button type="button" class="btn btn-success">Información</button></a>
              </span>
            </div>
          </div>



<!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li> 
        <li data-target="#myCarousel" data-slide-to="2"></li> 
        <li data-target="#myCarousel" data-slide-to="3"></li> 
      </ol>

      <div class="carousel-inner" role="listbox">

        <!-- 1º Hechizo -->
        <div class="item active">
          <div class="container">

            <div class="page-header">
              <h1>Bola de fuego</h1>
            </div>

            <div class="row ">
              <div class="col-sm-8">
                <h4> Lanza una bola ígnea que inflige daño de Fuego.</h4>
                <br>

                <div class="row ">
                  <div class="col-sm-4">
                    <div class="panel panel-primary">
                      <div class="panel-heading">
                        <h3 class="panel-title">Bola de fuego</h3>
                      </div>
                      <div class="panel-body">
                        <p> Daño: +20 </p>
                        <p> Coste de mana: 8pm </p>
                       <p> Número de usos: 2</p>
                       <p> Precisión: 90%</p>

                      </div>
                    </div>

                  </div>

                  <div class="col-sm-4">

                    <div class="panel panel-info">
                      <div class="panel-heading">
                        <h3 class="panel-title">Requisitos</h3>
                      </div>
                      <div class="panel-body">
                        Inteligencia: 15
                      </div>
                    </div>

                  </div>
                 <div class="col-sm-4"> 

                    <button id="buy1" type="button" class="btn btn-lg btn-success">50 humildanos</button>
                  </div>
                </div>
              </div>

              <div class="col-sm-4">
                <img class="img-thumbnail" src="${s}/img/fireball-red-3.png" alt="First slide"width="200" height="200">
              
              </div>

            </div>

          </div>
        </div>

      <!-- 2º Hechizo -->
        <div class="item">
          <div class="container">

            <div class="page-header">
              <h1>Curacion</h1>
            </div>

            <div class="row ">
              <div class="col-sm-8">
                <h4> Restaura vitalidad de tú personaje</h4>
                <br>

                <div class="row ">
                  <div class="col-sm-4">
                    <div class="panel panel-primary">
                      <div class="panel-heading">
                        <h3 class="panel-title">Curación</h3>
                      </div>
                      <div class="panel-body">
                        <p> Curacion: +70 </p>
                        <p> Coste de mana: 16pm </p>
                       <p> Número de usos: 1</p>
                       <p> Precisión: 100%</p>
                      </div>
                    </div>

                  </div>

                  <div class="col-sm-4">

                    <div class="panel panel-info">
                      <div class="panel-heading">
                        <h3 class="panel-title">Requisitos</h3>
                      </div>
                      <div class="panel-body">
                        <p>Inteligencia: 15</p>
                         <p>Vitalidad: 15</p>
                      </div>
                    </div>

                  </div>
                 <div class="col-sm-4"> 

                    <button type="button" class="btn btn-lg btn-success">100 humildanos</button>
                  </div>
                </div>
              </div>

              <div class="col-sm-4">
                <img class="img-thumbnail" src="${s}/img/heal-jade-3.png" alt="First slide"width="200" height="200">
              
              </div>

          </div>
          </div>
        </div>

      <!-- 3º Hechizo -->
        <div class="item">
          <div class="container">

            <div class="page-header">
              <h1>Boom Caboom</h1>
            </div>

            <div class="row ">
              <div class="col-sm-8">
                <h4> Da una yoya que te parte el puto cuello</h4>
                <br>

                <div class="row ">
                  <div class="col-sm-4">
                    <div class="panel panel-primary">
                      <div class="panel-heading">
                        <h3 class="panel-title">Boom Caboom</h3>
                      </div>
                      <div class="panel-body">
                        <p> Daño: +30 </p>
                       <p> Número de usos: 3</p>
                       <p> Precisión: 60%</p>
                      </div>
                    </div>

                  </div>

                  <div class="col-sm-4">

                    <div class="panel panel-info">
                      <div class="panel-heading">
                        <h3 class="panel-title">Requisitos</h3>
                      </div>
                      <div class="panel-body">
                        Fuerza: 30
                      </div>
                    </div>

                  </div>
                 <div class="col-sm-4"> 

                    <button type="button" class="btn btn-lg btn-success">500 humildanos</button>
                  </div>
                </div>
              </div>

              <div class="col-sm-4">
                <img class="img-thumbnail" src="${s}/img/enchant-acid-3.png" alt="First slide"width="200" height="200">
              
              </div>

          </div>
          </div>
        </div>        

      <!-- 4º Hechizo -->
        <div class="item">
          <div class="container">

            <div class="page-header">
              <h1>Puñalada</h1>
            </div>

            <div class="row ">
              <div class="col-sm-8">
                <h4> Te camuflas en las sombras, evitando el ataque enemigo y atacando a tu enemigo por la espalda </h4>
                <br>

                <div class="row ">
                  <div class="col-sm-4">
                    <div class="panel panel-primary">
                      <div class="panel-heading">
                        <h3 class="panel-title">Puñalada</h3>
                      </div>
                      <div class="panel-body">
                        <p> Daño: +10 </p>
                       <p> Número de usos: 1</p>
                       <p> Precisión: 90%</p>
                      </div>
                    </div>

                  </div>

                  <div class="col-sm-4">

                    <div class="panel panel-info">
                      <div class="panel-heading">
                        <h3 class="panel-title">Requisitos</h3>
                      </div>
                      <div class="panel-body">
                        Iniciativa: 20
                      </div>
                    </div>

                  </div>
                 <div class="col-sm-4"> 

                    <button type="button" class="btn btn-lg btn-success">200 humildanos</button>
                  </div>
                </div>
              </div>

              <div class="col-sm-4">
                <img class="img-thumbnail" src="${s}/img/enchant-blue-3.png" alt="First slide"width="200" height="200">
              
              </div>

          </div>
          </div>
        </div>

      </div>
    </div><!-- /.carousel -->
</div> <!-- Container de la tienda -->
    
<%@ include file="../jspf/footer.jspf"%>