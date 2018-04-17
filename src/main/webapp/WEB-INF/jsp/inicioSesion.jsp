<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<div class = "container">
	<div class = "row">
		<div class = "col-md-2"></div>
		<div class = "col-md-6">
			<div class = "borders panel">
						<form class="form-signin" action="/login" method="post">
							<fieldset>
						     <h2 class="form-signin-heading">Inicia Sesión</h2>
						     <label for="username" class="sr-only">User</label>
						     <input type="text" id="username" name="username" class="form-control" placeholder="Usuario" required autofocus/>
						     <label for="password" class="sr-only">Contraseña</label>
						     <input type="password" name="password"id="password" class="form-control" placeholder="Contraseña" required/>
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
<%@ include file="../jspf/authinfo.jspf"%>		

<%@ include file="../jspf/footer.jspf"%>


