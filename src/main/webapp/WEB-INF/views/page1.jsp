<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page 1</title>
<spring:url value="/resources/css/bootstrap.css" var="baseCSS" />
<link href="${baseCSS}" rel="stylesheet" />
<jsp:include page="../views/fragments/head.jsp" />
</head>
<body>
	<div class="container">
		<h3>Contacts</h3>
		<div style="overflow: auto; height: 300px;" >
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Name</th>
					<th>Phone</th>
					<th>Address</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach items="${contacts}" var="contact">
					<tr>
						<td>${contact.name}</td>
						<td>${contact.phone}</td>
						<td>${contact.address}</td>
					</tr>
				</c:forEach>


			</tbody>
		</table>
       </div>
		<h3>Add New</h3>
		<form:form method="POST" action="/user_create"
			modelAttribute="contact">
			<table>
				<tr>
					<td><label>Name</label></td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td><label>Phone</label></td>
					<td><form:input path="phone" /></td>
				</tr>
				<tr>
					<td><label>Address</label></td>
					<td><form:textarea rows="5" cols="21" path="address"></form:textarea></td>
				</tr>
				<tr>
					<td><input type="submit" class="btn btn-primary" /></td>
					<td><a href="<spring:url value="/" />"> Back </a></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>
