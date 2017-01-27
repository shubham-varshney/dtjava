
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/style.css">




</head>
<body>

<div class="contaimer">

<h1><b><i>Product Management Page</i></b></h1>


<table>
<thead>
<tr class="bg-success">
<th>Image</th>
<th>Product Name</th>
<th>Category</th>
<th>Condition</th>
<th>Price</th>
<th></th>
</thead>
</tr>

<c:foreach item="${products}" var="product">

<tr>
<td><img src="<c:url value="/resources/image/${product.productId}.png" />" alt="image" style="width:100%"></td>

<td>${product.productName}</td>
<td>${product.productCategory}</td>
<td>${product.productCondition}</td>
<td>${product.productPrice}</td>

<td>

<a href="<spring url value="/product/viewProduct/${product.productyId}"/>"><span class="glyphicon glyphicon-info-sign"></span></a>
<a href="<spring url value="/admin/product/delete/${product.productId }"/>"><span class="glyphicon glyphicon-trash"></span></a>
<a href="<spring url value"/admin/product/editProduct/${product.productId}"/>"><span class="glyphicon glyphicon-edit"></span></a>

</td>
</tr>

</c:foreach>
</table>

<a href="<spring url value="/admin/product/addProduct"/>">ADD PRODUCT</a>

</div>


</body>
</html>