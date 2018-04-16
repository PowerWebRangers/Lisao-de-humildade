<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<%@ include file="../jspf/header.jspf"%>

<div class="starter-template">
	<h1>Home</h1>
	<p class="lead">Bienvenido a casa</p>
	<div class = "panel">
	   	<table>
			<thead>
				<tr><th>id<th>login<th>roles</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="u">
					<tr>
					<td>${u.id}<td>${u.login}<td>${u.roles}
					</tr>	
				</c:forEach>
			</tbody>
		</table>
    </div>

	<%@ include file="../jspf/authinfo.jspf"%>		
</div>

<%@ include file="../jspf/footer.jspf"%>


