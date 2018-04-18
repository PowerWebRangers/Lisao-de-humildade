<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>
<div class = "container">
	<div class = "row">
		<div class = "col-md-2"></div>
		<div class = "col-md-6">
			<div class = "borders panel">
						<form class="form-signin" action="/addUser" method="post">
							<fieldset>
						    <h2 class="form-signin-heading">Inicia Sesión</h2>
						    <label for="login" class="sr-only">User</label>
						    <input type="text" id="login" name="login" class="form-control" placeholder="Usuario" required autofocus/>
						    <label for="email" class="sr-only">Email</label>
						    <input type="email" id="email" name="email" placeholder="Email" class="form-control"required/>
						    <label for="password" class="sr-only">Contraseña</label>
						    <input type="password" name="password"id="password" class="form-control" placeholder="Contraseña" required/>
						    <label for="confirmpassword" class="sr-only"></label> 
							<input type="password" name="confirmpassword" id="confirmpassword" class="form-control" placeholder="Confirmar contraseña" required/>
						    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						    <div class="form-actions">
             				<button type="submit" class="btn">Log in</button>
					          	</div>
							</fieldset>
					     </form>
			</div>
		</div>
		<div class = "col-md-2"></div>
	</div>
</div>
 		<div class = "container borders panel">
	 		<div class = "row">
	         <form class="form container" role="form">
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
	         </div>
	         <div class = "top-buffer"></div>             
		</div>
		 
<%@ include file="../jspf/footer.jspf"%>
