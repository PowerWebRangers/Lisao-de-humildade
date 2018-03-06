<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/headerInicio.jspf"%>

 <div class ="row">
      <div class ="container-fluid borders bgg">
        <div class = "jumbotron">
          <div class ="row">
              <h1 class = "text-center title main-title">Humble League</h1>
          </div>
          <div class ="row">
      

          </div>

        </div>

      </div>

    </div>
    <div class="row top-buffer">
      <div class="col-lg-3">
      </div>
      <div class="col-lg-6">
        <div class="container-fluid">
        <a class = "btn btn-danger btn-block" href="/registro" >¡Juega ya!</a>
      </div>
      </div>
      <div class="col-lg-3">
      </div>
    </div>
    <div class="row top-buffer">
      <div class = "col-xs-1">
      </div>
      <div class = "col-xs-10">
        <div class="container-fluid borders papiro">
        
          <div class="row jumbotron">
            <h1 class="text-center gameFact-title">¡Combate en la arena!</h1>
            <p class="text-center gamefact-text"> Contra otros jugadores de todo el mundo.</p>
          </div>
          <div class="row jumbotron">
            <h1 class="text-center gameFact-title">¡Personaliza tus personajes!</h1>
            <p class="text-center gamefact-text"> Tú decides el destino de tu personaje. Combina las estadísticas de tu personaje con potentes habilidades para conseguir dejar K.O. a tu rival</p>
          </div>
          <div class="row jumbotron">
            <h1 class="text-center gameFact-title">¡Combate contra tus amigos!</h1>
            <p class="text-center gamefact-text"> Con nuestro sistema de amistad, agrega y chatea con amigos. O incluso desafíalos a duelos amistosos.</p>
          </div>
          <div class="row jumbotron">
            <h1 class="text-center gameFact-title">Demuestra que eres el mejor</h1>
            <p class=" top-buffer text-center gamefact-text">Escala los rankings y llega a ser el</p>
            <p class ="text-center gamefact-text"> <big>más humilde</big></p>
          </div>
          </div>
        </div>
      <div class = "col-xs-1">
      </div>
    </div>




      <!-- FACTS ABOUT THE GAME-->

      <!--JUMBOTRON======================================================================================
      <div class ="row">
        <div class="container-fluid">
            <div class="bgg  border-top border-bottom border-left border-right">
              <div class = "jumbotron">
                <h1 class = "text-center title main-title">Humble League</h1>
              <div class="container">
                <div class="row">
                  <div class ="col-md-12"></div>
                </div>
                <div class="row">
                  <div class ="col-md-12"></div>
                </div>
                <div class="row">
                  <div class ="col-md-12">
                  <p class ="text-center factP">Vence a tus contrincantes.</p>
                    <p class ="text-center factP">¡Conviertete en el mejor!</p>
                  </div>
                </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      <div class ="row">

      </div>

        <div class = "row top-buffer">
          <div class = "container">
            <div class ="col-md-1 a">
            </div>
            <div class ="col-md-10 borders">
              <div class ="container">
                <div class ="row">
                  <div class="col-md-6">
                    A
                  </div>
                  <div class="col-md-6">
                    B
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-12">
                    C
                  </div>
                </div>

              </div>
            </div>
            <div class = "col-md-1 b">
            </div>
          </div>
        </div>
        <div class="row top-buffer">

        </div>

      </div>
      <!---
      <div class ="container border-left border-right border-top border-botom">
      <div class = "jumbotron">
      <div class ="">
        <div class="row">
          <div class = "">
          <div class="col-md-6 gameFacts" id="gf1">
            <div class="container-fluid">
                <h1 class = "text text-center title">¡Combate contra tus amigos!</h1>
              <p >Ha llegado el momento de dejar claro de una vez por todas quien es el mejor jugador por turnos!</p>
              <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
            </div>
          </div>
          <div class="col-md-6 slightborder gameFacts" id="gf2">
            <div class="container-fluid">

              <h1 class = "text text-center title">¡Elige sabiamente tus habilidades!</h1>
              <p clas = "text-center">Decide antes de cada batalla qué habilidades podrá usar tu luchador. Equipalo con las habilidades que más le convengan según sus estadísticas de luchador.</p>
            </div>
          </div>
          </div>
          </div>
        </div>
          <div class = "slightborder" >
            <div class="row">
                <div class="col-md-12 gameFacts" id="gf3">
                  <div class = "container-fluid">

                <h1 class = "text text-center title">Crea tu luchador y llevalo a la victoria!</h1>
                <p >Crea un personaje y lucha con el a lo largo de cientos de batallas contra otras personas. Decide que rama tomar gracias a nuestro sistema de puntos de experiencia.</p>
                <p> ¿En qué se convertirá tu luchador? ¿Será un gran mago? ¡Quizá será un gran atacante! O puede que prefieras tomar la via de aguantar y esperar al momento justo de lanzar un ataque definitivo...</p>
                <div class = "row">
                  <div class="col-md-5">

                  </div>
                  <div class="col-md-2  text-center">

                <a class ="btn btn-default" role = "button" href="./Registro.html">¡Juega Ahora!</a>
              </div>
                <div class="col-md-5">

                </div>

              </div>

            </div>
            </div>
          </div>
      </div>
    </div>
  </div>



    <!-- BARRA DE NAVEGACIÓN -->
         
<%@ include file="../jspf/footer.jspf"%>


