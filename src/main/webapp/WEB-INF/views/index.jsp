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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Index</title>
<spring:url value="/resources/css/bootstrap.css" var="baseCSS" />
<link href="${baseCSS}" rel="stylesheet" />
<jsp:include page="../views/fragments/head.jsp" />
</head>
<body>
	<div class="container">
		<h1>Hello from SPRING-BOOT</h1>
		<br /> <a href="<spring:url value="/next" />">Goto Next Page</a>
	</div>
</body>
</html>