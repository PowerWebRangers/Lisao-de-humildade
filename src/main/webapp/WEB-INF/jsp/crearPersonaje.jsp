<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

        <h1> 
          Creación de un personaje
        </h1>

        <div class="panel panel-default">
            <div class="panel-body"> 


            <div class="row">
              <div class="col-md-5 col-xs-5">


              <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="firstName" class="col-sm-6 control-label">Nombre de personaje</label>
                    <div class="col-sm-6">
                        <input type="text" id="firstName" placeholder="Nombre" class="form-control" autofocus>
                    </div>
                </div>
              </form>

            </br>
                  <table class="table table-striped">
                    <thead> 
                      <tr>
                        <th class="col-sm-4">Estadística</th>
                        <th class="col-sm-8">Valor</th>
                      </tr>
                    </thead>
                    <tbody>
                      <!--1º FILA -->
                      <tr>
                        <!--1ºColumna-->
                        <td class="col-sm-4">
                          Vida
                        </td>

                        <!--2ºColumna-->
                        <td class="col-sm-8">
                          100
                        </td>
                      </tr>

                      <!--2º FILA -->
                      <tr>
                        <!--1ºColumna-->
                        <td class="col-sm-4">
                          Mana
                        </td>

                        <!--2ºColumna-->
                        <td class="col-sm-8">
                          20
                        </td>
                      </tr>

                      <!--3º FILA -->
                      <tr>
                        <!--1ºColumna-->
                        <td class="col-sm-4">
                          Daño físico
                        </td>

                        <!--2ºColumna-->
                        <td class="col-sm-8">
                          7
                        </td>
                      </tr>

                      <!--4º FILA -->
                      <tr>
                        <!--1ºColumna-->
                        <td class="col-sm-4">
                          Daño magia
                        </td>

                        <!--2ºColumna-->
                        <td class="col-sm-8">
                          0
                        </td>
                      </tr>

                      <!--5º FILA -->
                      <tr>
                        <!--1ºColumna-->
                        <td class="col-sm-4">
                          Iniciativa
                        </td>

                        <!--2ºColumna-->
                        <td class="col-sm-8">
                          3
                        </td>
                      </tr>

                      <!--6º FILA -->
                      <tr>
                        <!--1ºColumna-->
                        <td class="col-sm-4">
                          Reduccion daño
                        </td>

                        <!--2ºColumna-->
                        <td class="col-sm-8">
                          15%
                        </td>
                      </tr>
                    </tbody>

                  </table>

              </div>

              <div class="col-md-1 col-xs-1"></div>

              <!--Atributos-->
              <div class="col-md-5 col-xs-6">
              </br>
                <div class="panel panel-primary">
                      <div class="panel-heading">
                        <h2 class="panel-title">Atributos</h2>
                      </div>
                      <div class="panel-body">
                 <h4> Puntos disponibles: 20 </h4>

              </br>

                <!--Vitalidad-->
                <div class="row">
                  <div class="col-md-3 col-xs-4"> Vitalidad </div>

                  <div class="col-md-5 col-xs-8"> 

                    <!--minus and plus -->
                    <div class="center">
                      <div class="input-group">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" disabled="disabled" data-type="minus" data-field="quant[0]">
                                <span class="glyphicon glyphicon-minus"></span>
                            </button>
                        </span>
                        <input type="text" name="quant[0]" class="form-control input-number" value="0" min="0" max="10">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[0]">
                                <span class="glyphicon glyphicon-plus"></span>
                            </button>
                        </span>
                      </div>
                    </div>

                  </div>
                </div>

              </br>

                <!--Mana-->
                <div class="row">
                  <div class="col-md-3 col-xs-4"> Mana </div>

                  <div class="col-md-5 col-xs-8"> 

                    <!--minus and plus -->
                    <div class="center">
                      <div class="input-group">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
                                <span class="glyphicon glyphicon-minus"></span>
                            </button>
                        </span>
                        <input type="text" name="quant[1]" class="form-control input-number" value="0" min="0" max="10">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[1]">
                                <span class="glyphicon glyphicon-plus"></span>
                            </button>
                        </span>
                      </div>
                    </div>

                  </div>
                </div>

              </br>

                <!--Fuerza-->
                <div class="row">
                  <div class="col-md-3 col-xs-4"> Fuerza </div>

                  <div class="col-md-5 col-xs-8"> 

                    <!--minus and plus -->
                    <div class="center">
                      <div class="input-group">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" disabled="disabled" data-type="minus" data-field="quant[2]">
                                <span class="glyphicon glyphicon-minus"></span>
                            </button>
                        </span>
                        <input type="text" name="quant[2]" class="form-control input-number" value="0" min="0" max="10">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[2]">
                                <span class="glyphicon glyphicon-plus"></span>
                            </button>
                        </span>
                      </div>
                    </div>

                  </div>
                </div>
              </br>

                <!--Inteligencia-->
                <div class="row">
                  <div class="col-md-3 col-xs-4"> Inteligencia </div>

                  <div class="col-md-5 col-xs-8"> 

                    <!--minus and plus -->
                    <div class="center">
                      <div class="input-group">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" disabled="disabled" data-type="minus" data-field="quant[3]">
                                <span class="glyphicon glyphicon-minus"></span>
                            </button>
                        </span>
                        <input type="text" name="quant[3]" class="form-control input-number" value="0" min="0" max="10">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[3]">
                                <span class="glyphicon glyphicon-plus"></span>
                            </button>
                        </span>
                      </div>
                    </div>

                  </div>
                </div>
              </br>

                <!--Velocidad-->
                <div class="row">
                  <div class="col-md-3 col-xs-4"> Velocidad </div>

                  <div class="col-md-5 col-xs-8"> 

                    <!--minus and plus -->
                    <div class="center">
                      <div class="input-group">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" disabled="disabled" data-type="minus" data-field="quant[4]">
                                <span class="glyphicon glyphicon-minus"></span>
                            </button>
                        </span>
                        <input type="text" name="quant[4]" class="form-control input-number" value="0" min="0" max="10">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[4]">
                                <span class="glyphicon glyphicon-plus"></span>
                            </button>
                        </span>
                      </div>
                    </div>

                  </div>
                </div>
              </br>

                 <!--Armadura-->
                <div class="row">
                  <div class="col-md-3 col-xs-4"> Armadura </div>

                  <div class="col-md-5 col-xs-8"> 

                    <!--minus and plus -->
                    <div class="center">
                      <div class="input-group">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" disabled="disabled" data-type="minus" data-field="quant[5]">
                                <span class="glyphicon glyphicon-minus"></span>
                            </button>
                        </span>
                        <input type="text" name="quant[5]" class="form-control input-number" value="0" min="0" max="10">
                        <span class="input-group-btn">
                            <button type="button" class="btn btn-default btn-number" data-type="plus" data-field="quant[5]">
                                <span class="glyphicon glyphicon-plus"></span>
                            </button>
                        </span>
                      </div>
                    </div>

                  </div>
                </div>   
                      </div>
                    </div>

            
              </div>
            </div>

          </br>
          </br>

            <div class="row">
                  <div class="col-md-7 col-xs-7">  </div>
                  <div class="col-md-3 col-xs-3">
                    <a  href="/overview" role="button"> <button type="button" class="btn btn-lg btn-primary btn-block">Crear</button> </a>
                  </div>
 
            </div>

          </div>

        </div>
        

      
<%@ include file="../jspf/footer.jspf"%>
