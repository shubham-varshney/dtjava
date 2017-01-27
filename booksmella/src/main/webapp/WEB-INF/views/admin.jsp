	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">

<h1><center><i><b>ADMINISTRATOR PAGE</b></i></center></h1>

<c:if test="${pageContext.request.userPrincipal.name !=null}">
<h2>
Welcome:${pageContext.request.userPrincipal.name}

<a href=c:url value="/j_spring_security_logout">logout</a>
</h2>
</c:if>

<h3><a href=="#">Product Inventory</a></h3>
<p><small>Investigate your Product</small></p>


<h3><a href="#">customer Management</a></h3>
<p><small>View detail of customers here</small></p>

</div>


</body>
</html>