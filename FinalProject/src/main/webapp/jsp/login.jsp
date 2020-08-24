<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title><spring:message code="login.title"/></title>
<link type="text/css" href="login.css" rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		var selItem = localStorage.getItem("locales");
		$('#locales').val(selItem ? selItem : 'en');
		$("#locales").change(function() {
			var selectedOption = $('#locales').val();
			if (selectedOption) {
				window.location.replace('?lang=' + selectedOption);
				localStorage.setItem("locales", selectedOption);
			}
		});
	});
</script>

</head>
<body>
	<div class="fadeIn first">
				<img src="https://userresearch.google.com/images/team_graphic.png"
					id="icon" alt="Login icon" />
			</div>

    <form method="POST" action="${contextPath}/login" class="form-signin">
        <h2 class="form-heading"><spring:message code="login.title"/></h2>

        <div class="form-group ${error != null ? 'has-error' : ''}">
            <span>${message}</span>
            <input name="email" type="text" class="form-control" placeholder="<spring:message code='login.email'/>"
                   autofocus="true"/>
            <input name="password" type="password" class="form-control" placeholder="<spring:message code='login.password'/>"/>
            <span>${error}</span>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

			<input class="fadeIn fourth" type="submit"  value="<spring:message code='login.signin'/>" />
				</div>

			</form>

			<div>
				<fieldset>
					<label><spring:message code="login.choose_language" /></label> <select
						id="locales">
						<option value="en"><spring:message code='login.english'/></option>
						<option value="ua"><spring:message code='login.ukrainian'/></option>

					</select>
				</fieldset>
			</div>

			<!-- Remind Passowrd -->
			<div id="formFooter">
				<a class="underlineHover" href="${contextPath}/registration"><spring:message code='login.create_account'/></a>
			</div>

<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>