<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title><spring:message code="registration.title"/></title>
	<link type="text/css" href="registration.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
</head>

<body>

<div class="container" id="formContent">

    <form:form method="POST" modelAttribute="userForm" class="form-signin" role="form" action="/registration">
	
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<h2>
							<spring:message code="registration.title.2"/>
						</h2>
						<hr>
					</div>
				</div>

			<spring:bind path="name">

				<spring:message code="registration.name" var="name"/>

				<div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="name">${name}</label>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<div class="input-group-addon" style="width: 2.6rem">
									<i class="fa fa-user"></i>
								</div>
								<form:input type="text" path="name" name="name"
									class="form-control" id="name" autofocus="true"
									placeholder="${name}"></form:input>
								<form:errors path="name"></form:errors>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="form-control-feedback">
							<span class="text-danger align-middle">
							</span>
						</div>
					</div>
				</div>
			</spring:bind>

			<spring:bind path="surname">
			
				<spring:message code="registration.surname" var="surname"/>
				
					<div class="row">
						<div class="col-md-3 field-label-responsive">
							<label for="surname">${surname}</label>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 2.6rem">
										<i class="fa fa-user"></i>
									</div>
									<form:input type="text" path="surname" name="surname"
										class="form-control" id="surname" placeholder="${surname}"></form:input>
									<form:errors path="surname"></form:errors>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-control-feedback">
								<span class="text-danger align-middle"> <!-- Put name validation error messages here -->
								</span>
							</div>
						</div>
					</div>
				</spring:bind>
	
				<spring:bind path="email">
				
					<spring:message code="registration.email.placeholder" var="email"/>
					
					<div class="row">
						<div class="col-md-3 field-label-responsive">
							<label for="email"><spring:message code="registration.email"/></label>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 2.6rem">
										<i class="fa fa-at"></i>
									</div>
									<form:input type="text" path="email" name="email"
										class="form-control" id="email" placeholder="${email}"></form:input>
									<form:errors path="email"></form:errors>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-control-feedback">
								<span class="text-danger align-middle"> <!-- Put e-mail validation error messages here -->
								</span>
							</div>
						</div>
					</div>
				</spring:bind>
	
				<spring:bind path="password">
				
					<spring:message code="registration.password" var="password"/>
					
					<div class="row">
						<div class="col-md-3 field-label-responsive">
							<label for="password">${password}</label>
						</div>
						<div class="col-md-6">
							<div class="form-group has-danger">
								<div class="input-group mb-2 mr-sm-2 mb-sm-0">
									<div class="input-group-addon" style="width: 2.6rem">
										<i class="fa fa-key"></i>
									</div>
									<form:input type="password" path="password" name="password"
										class="form-control" id="password" placeholder="${password}"></form:input>
									<form:errors path="password"></form:errors>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="form-control-feedback">
								<span class="text-danger align-middle"> 
								<!-- <i class="fa fa-close"> </i> -->
								</span>
							</div>
						</div>
					</div>
				</spring:bind>

			<spring:bind path="passwordConfirm">
			
				<spring:message code="registration.passwordConfirm" var="passwordConfirm"/>
				
				<div class="row">
					<div class="col-md-3 field-label-responsive">
						<label for="password-confirmation">${passwordConfirm}</label>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<div class="input-group mb-2 mr-sm-2 mb-sm-0">
								<div class="input-group-addon" style="width: 2.6rem">
									<i class="fa fa-repeat"></i>
								</div>
								<form:input type="password" path="passwordConfirm"
									name="password-confirmation" class="form-control"
									id="password-confirm" placeholder="${passwordConfirm}"></form:input>
								<form:errors path="passwordConfirm"></form:errors>
							</div>
						</div>
					</div>
				</div>
			</spring:bind>

			<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<button type="submit" class="btn btn-success">
							<i class="fa fa-user-plus"></i> <spring:message code="registration.register"/>
						</button>
					</div>
				</div>
	
	    </form:form>

</div>

</body>
</html>