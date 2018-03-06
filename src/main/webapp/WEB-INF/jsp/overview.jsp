<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<script>
    $(document).ready(function(){
      $(".imagenes img").click(function(){
        $("#texto").html($(this).attr("title"));
      });
    });
  </script>


<div class="panel panel-default">
          <div class="panel-body"><!--PANEL BODY-->
            <h3>Información Usuario:</h3>
            <br>
              <img class="spriteCharacter" src="${s}/img/pruebaPsj.png" style="float:left; margin:10px;" >
              <br>
              <p>Nombre: Carlos</p>
              <br>
              <p>Nivel 26</p>
              
              <a href="/crearPersonaje" role="button"><button type="button" class="btn btn-success botonCreaPerfil">Crear Perfil</button></a>
              <br>
              <br>

              <!--PANELES DENTRO DEL PANEL PRINCIPAL-->
              <!--PANEL 1 -->
              <div class ="row"><!--FILA-->
                      <div class="col-md-6">
                      <div class=" panel panel-default">
                        <div class="panel-body">
                            <h3>Habilidades: </h3>
                            <br>

                            <div id="myCarousel" class="carousel slide" data-ride="carousel">

                                <div class ="imagenes"><!--IMAGENES-->

                                <div class="carousel-inner" role="listbox">

                                  <div class="item active">
                                  <div class="container">

                                    <!-- Indicators -->
                     

                                <div><img class="imagenHechizo" src="${s}/img/espada.png" style="float:left; margin:10px;" title = "Ataque ++<br><br> Habilidad que aumenta el ataque del usuario +30 durante la batalla."></div>



                                <div><img class="imagenHechizo" src="${s}/img/bolaVeneno.png" style="float:left; margin:10px;" title = "Veneno<br><br> Habilidad que provoca el estado veneno en el enemigo. Reduce los puntos de vida cada turno."></div>


                                 <div><img class="imagenHechizo" src="${s}/img/evasion.png" style="float:left; margin:10px;" title = "Evasion <br><br> Habilidad que provoca el estado evasion al usuario. Reduce la posibilidad de ser golpeado." ></div>



                                 <div><img class="imagenHechizo" src="${s}/img/cura.png" style="float:left; margin:10px;"   title = "Cura <br><br> Habilidad que recupera +30 puntos de vida al usuario."></div>

                                  </div>
                                </div>

                                 <div class="item">
                                  <div class="container">

                                    <!-- Indicators -->
                     

                                <div><img class="imagenHechizo" src="${s}/img/bolaHielo.png" style="float:left; margin:10px;" title = "Hielo<br><br> Habilidad que congela al enemigo durante un turno."></div>



                                <div><img class="imagenHechizo" src="${s}/img/espadaVeneno.png" style="float:left; margin:10px;" title = "Espada Veneno<br><br> Habilidad que provoca el estado veneno en el enemigo. Reduce los puntos de vida cada turno e inflinge 20 puntos de daño."></div>


                                 <div><img class="imagenHechizo" src="${s}/img/velocidad.png" style="float:left; margin:10px;" title = "Velocidad <br><br> Habilidad que aumenta la iniciativa +10 puntos." ></div>



                                 <div><img class="imagenHechizo" src="${s}/img/esna.png" style="float:left; margin:10px;"   title = "Esna <br><br> Habilidad que cura cualquier estado alterado."></div>

                                  </div>
                                </div>





                              </div>
                              <br>
                              <ul class="pager">
                              <li class="previous"><a href="#myCarousel" data-slide-to="0">&larr; Anterior</a></li>
                              <li class="next"><a href="#myCarousel" data-slide-to="1">Siguiente &rarr;</a></li>
                              </ul>
                            
                            </div>
                    


                            </div><!--IMAGENES-->

                        </div>
                      </div>
                      </div>

              <!--PANEL 1 -->

                   <div class="col-md-6">
                  <div class=" panel panel-default">
                    <div class="panel-body">
                        <h3>Descripción de la habilidad: </h3>
                        <br>
                        <br>
                        <div class="resultado">
                          <div id="texto"></div>
                        </div>

                    </div>
                  </div>
                </div>

                </div><!--FILA-->
                <div class=" panel panel-default">
                    <div class="panel-body">
                        <h3>Información Jugador 1</h3>
                        <br>
                        <img class= "spritePlayer" src="${s}/img/pruebaPsj.png" style="float:left; margin:10px;" >
                        <br>
                        <p>Jugador: John</p>
                        <br>
                        <p>Nivel EXP: 30</p>
                        <br>
                        <br>
                        <br>
                        <h3>Estadísticas</h3>
                        <br>

                        <div class ="row">

                          <div class="col-md-6">
                            <li>Vida: 120</li>
                            <li>Maná: 70</li>
                            <li>Fuerza: 30</li>
                          </div>


                          <div class="col-md-6">
                          <li>Inteligencia: 25</li>
                          <li>Armadura: 50</li>
                          <li>Iniciativa: 30</li>
                        </div>



                        </div>
                    </div>
                   </div>



              <!--JUGADOR 2-->
              <div class=" panel panel-default">
                    <div class="panel-body">
                        <h3>Información Jugador 2</h3>
                        <br>
                        <img class= "spritePlayer" src="${s}/img/pruebaPsj.png" style="float:left; margin:10px;" >
                        <br>
                        <p>Jugador: Anne</p>
                        <br>
                        <p>Nivel EXP: 70</p>
                        <br>
                        <br>
                        <br>
                        <h3>Estadísticas</h3>
                        <br>

                        <div class ="row">

                          <div class="col-md-6">
                            <li>Vida: 240</li>
                            <li>Maná: 100</li>
                            <li>Fuerza: 80</li>
                          </div>


                          <div class="col-md-6">
                            <li>Inteligencia: 225</li>
                            <li>Armadura: 150</li>
                            <li>Iniciativa: 110</li>
                          </div>

                        </div>
                    </div>
              </div>




                      <!--JUGADOR 3-->
              <div class=" panel panel-default">
                    <div class="panel-body">
                        <h3>Información Jugador 3</h3>
                        <br>
                        <img class= "spritePlayer" src="${s}/img/pruebaPsj.png" style="float:left; margin:10px;" >
                        <br>
                        <p>Jugador: Lin</p>
                        <br>
                        <p>Nivel EXP: 56</p>
                        <br>
                        <br>
                        <br>
                        <h3>Estadísticas</h3>
                        <br>

                    <div class ="row">

                      <div class="col-md-6">
                          <li>Vida: 250</li>
                          <li>Maná: 65</li>
                          <li>Fuerza: 120</li>
                      </div>


                      <div class="col-md-6">
                          <li>Inteligencia: 80</li>
                          <li>Armadura: 90</li>
                          <li>Iniciativa: 130</li>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
<%@ include file="../jspf/footer.jspf"%>
