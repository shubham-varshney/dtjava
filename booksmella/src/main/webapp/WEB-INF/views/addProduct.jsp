<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
margin-bottom:50px;
}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/templates/Header.jsp" %>
<div class="container" id="top">

<h1><center>ADD PRODUCT</center></h1>
<form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data" >

<div class="form-group">
<label for="productName">Product Name</label>
<form:input path="productName" class="form-control"></form:input>
</div>

<div class="form-group">
<label for="category">Category</label>
<label class="checkbox-inline"><form:radiobutton path="productCategory" value="Religious Book" />Religious Book</label>
<label class="checkbox-inline"><form:radiobutton path="productCategory" value="Educational Book" />Educational Book</label>
<label class="checkbox-inline"><form:radiobutton path="productCategory" value="Novels" />Novels</label>
<label class="checkbox-inline"><form:radiobutton path="productCategory" value="Preperation books" /> 	</label>
</div>


<div class="form-group">
<label for="discription">Product Discription</label>
<form:textarea path="productDiscription" class="form-control"/>
</div>

<div class="form-group">
<label for="price">Product Price</label>
<form:input path="productPrice" class="form-control" />

</div>

<div class="form-group">
<label for="productCondition">Condition</label>
<label class="checkbox-inline"><form:radiobutton path="productCondition" value="new" />new</label>
<label class="checkbox-inline"><form:radiobutton path="productCondition" value="used" />used</label>
</div>

<div class="form-group">
<label for="productStatus">Status</label>
<label class="checkbox"><form:radiobutton path="productStatus" value="active" />active</label>
<label class="checkbox"><form:radiobutton path="productStatus" value="inactive" />inactive</label>

</div>

<div class="form-group">
<label for="unitInStock">Unit In Stock</label>
<form:input path="unitInStock" class="form-control" />

</div>

<div class="form-group">
<label for="manufacturer">Manufacturer</label>
<form:input path="manufacturer" class="form-control"/>
</div>

<div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

<br/><br/>

<input type="submit" value="submit" class="btn btn-primary"/>
<a href="<c:url value="/admin/adminProduct" />" class="btn btn-default">Cancel</a>

</form:form>
</div>
<%@include file="/WEB-INF/views/templates/Footer.jsp" %>

</body>
</html>