<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<div class="starter-template">
	<h1>Admin</h1>
	<p class="lead">Información muy confidencial</p>

	<hr/>

	<form action="/addUser" method="post">
		<label for="login">login<input name="login"/></label>
		<label for="password">password<input type="password" name="password"/></label>
		<label for="isAdmin">is admin?<input type="checkbox" name="isAdmin"></label>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            
            <div class="form-actions">
                <button type="submit" class="btn">Create user</button>
            </div>
	</form>
	
	<hr/>
	
	<table>
	<thead>
	<tr><td>id<td>login<td>roles<td>humildones<td>ELO<td>email</tr>
	</thead>
	<tbody>
	<c:forEach items="${users}" var="u">
		<tr>
		<td>${u.id}<td>${u.login}<td>${u.roles}<td>${u.humildones}<td>${u.elo}<td>${u.email}
		</tr>	
	</c:forEach>
	</tbody>
	</table>

	<%@ include file="../jspf/authinfo.jspf"%>		
</div>

<%@ include file="../jspf/footer.jspf"%>
