<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

         <form class="form-horizontal" role="form">
                <h2>Crear una cuenta</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">Nombre de usuario</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" placeholder="Nombre" class="form-control" autofocus>
                        <span class="help-block">Ejemplo: Willyrex, Mundodesconocido</span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-9">
                        <input type="email" id="email" placeholder="Email" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">Contraseña</label>
                    <div class="col-sm-9">
                        <input type="password" id="password" placeholder="Contraseña" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                      <!-- TYPE DEBERÍA SER submit para cuando tengamos bases de datos -->
                        <a  href="/overview" role="button"> <button type="button" class="btn btn-primary btn-block">Registrarse</button> </a>
                    </div>
                </div>
            </form> <!-- /form -->

<%@ include file="../jspf/footer.jspf"%>
