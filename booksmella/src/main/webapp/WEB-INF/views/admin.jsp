<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#top{

margin-top:100px;
margin-bottom:300px;
}
</style>

</head>
<body>

<%@include file="templates/Header.jsp" %>

	<div class="container" id="top">

		<h1>
			<center>
				<i><b><u>ADMINISTRATOR PAGE</u></b></i>
			</center>
		</h1>
		
		<br><br>

		<c:if test="${pageContext.request.userPrincipal.name !=null}">
			<h2><center>
				Welcome:${pageContext.request.userPrincipal.name} 
	        <a href="<c:url value="/j_spring_security_logout"/>">logout</a>
			</center></h2>
		</c:if>

		<h3>
			<a href="<c:url value="/admin/adminProduct" /> ">Product Inventory</a>
		</h3>
		<p>
			<small>Investigate your Product</small>
		</p>


		<h3>
			<a href="<c:url value="/admin/customer" />">customer Management</a>
		</h3>
		<p>
			<small>View detail of customers here</small>
		</p>

	</div>
	
	   <%@include file="templates/Footer.jsp" %>
</body>
</html>