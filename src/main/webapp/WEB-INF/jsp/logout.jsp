<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<div class="starter-template">
	<h1>Logout</h1>
	<p class="lead">¿Estás seguro que deseas salir?</p>

	<form action="/logout" method="post">
	    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>	
		<button type="submit">Salir</button>
	</form>		
</div>

<%@ include file="../jspf/footer.jspf"%>
