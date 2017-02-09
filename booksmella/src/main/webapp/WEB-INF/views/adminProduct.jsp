<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" >
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css" />">
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<style>
#top{

margin-top:100px;
margin-bottom:100px;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/templates/Header.jsp" %>

<script>
    $(document).ready(function(){

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10, -1], [1,2,3,5,10, "All"]]
        });
    });
</script>


<div class="container" id="top">

<h1><b><i>Product Management Page</i></b></h1>


<table class="table table-hover">
<thead>
<tr class="bg-success">
<th>Image</th>
<th>Product Name</th>
<th>Category</th>
<th>Condition</th>
<th>Price</th>
<th></th>
</tr>
</thead>


<c:forEach items="${products}" var="product">

<tr>
<td><img src="<c:url value="/resources/image/${product.productId}.jpg" />" alt="image" style="width:100%"></td>

<td>${product.productName}</td>
<td>${product.productCategory}</td>
<td>${product.productCondition}</td>
<td>${product.productPrice}</td>

<td>

<a href="<spring:url value="/product/viewProduct/${product.productyId}"/>"><span class="glyphicon glyphicon-info-sign"></span></a>
<a href="<spring:url value="/admin/product/deleteProduct/${product.productId}"/>"><span class="glyphicon glyphicon-trash"></span></a>
<a href="<spring:url value="/admin/product/editProduct/${product.productId}"/>"><span class="glyphicon glyphicon-edit"></span></a>

</td>
</tr>

</c:forEach>
</table>

<br><br>

<a href="<spring:url value="/admin/product/addProduct" />">ADD PRODUCT</a>

</div>

	   <%@include file="/WEB-INF/views/templates/Footer.jsp" %>
</body>
</html>