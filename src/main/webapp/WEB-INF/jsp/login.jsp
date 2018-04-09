<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<div class="form-signin">
	<h1>Registro</h1>

    <form action="/login" method="post">               
        <fieldset>
            <legend>Please Login</legend>
            <label for="username" class="sr-only"></label>
            <input type="text" id="username" name="username" class="form-control" placeholder="Usuario" required autofocus/>        
            <label for="password" class="sr-only"></label>
            <input type="password" id="password" name="password"class="form-control" placeholder="Contraseña" required/>
            
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            
            <div class="form-actions">
                <button type="submit" class="btn">Log in</button>
            </div>
        </fieldset>
    </form>

	<%@ include file="../jspf/authinfo.jspf"%>		
</div>

<%@ include file="../jspf/footer.jspf"%>
