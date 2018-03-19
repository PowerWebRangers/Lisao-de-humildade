<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

 <!-- Jombotron with title -->
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
    <!-- Boton Jugar -->
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
    <!-- Game facts -->
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
            <p class ="text-center gamefact-text"> más humilde</p>
          </div>
          </div>
        </div>
      <div class = "col-xs-1">
      </div>
    </div>


    <!-- BARRA DE NAVEGACIÓN -->
         
<%@ include file="../jspf/footer.jspf"%>


