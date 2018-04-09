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
						<form class="form-signin">
						     <h2 class="form-signin-heading">Inicia Sesión</h2>
						     <label for="firstName" class="sr-only">Dirección de correo</label>
						     <input type="text" id="firstName" class="form-control" placeholder="Usuario" required autofocus>
						     <label for="inputPassword" class="sr-only">Contraseña</label>
						     <input type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
						      <div class="checkbox">
						         <label>
						            <input type="checkbox" value="remember-me"> Recuérdame
						          </label>
						      </div>
						         <!-- TYPE DEBERÍA SER submit para cuando tengamos bases de datos -->
						      <a  href="/overview" role="button">   <button class="btn btn-lg btn-primary btn-block" type="button">Entrar</button></a>
					     </form>
			</div>
		</div>
		<div class = "col-md-2"></div>
	</div>
</div>


<%@ include file="../jspf/footer.jspf"%>


