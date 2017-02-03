<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
<div class="jumbotron">
<h1>SHOP BOOKS NOW</h1>
<p>Enjoy shopping verity of books here...</p>

</div>

<table class="table table-hover">
<thead>
<tr class="bg-success">
<th>IMAGE</th>
<th>BOOK NAME</th>
<th>CATEGORY</th>
<th>CONDITION</th>
<th>PRICE</th>
<th></th>
</tr>

</thead>

<c:forEach items="${products}" var="product">

<tr>
<td><img src="<c:url value="/resources/image/{product.productId}.png"/>" alt="image" style="width=100%" ></td>
<td>${product.productName}</td>
<td>${product.productCategory}</td>
<td>${product.productCondition}</td>
<td>${product.productPrice}</td>
<td>
<a href="<spring:url value="/product/viewProduct/${product.productId}.png"/>"><span class="glyphicon glyphicon-info-sign"></span></a>
</td>


</tr>
</c:forEach>
</table>








</div>

</body>
</html>