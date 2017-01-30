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
	<div class="container">
		<h1>
			<b><i><center>CUSTOMER DETAILS</center></i></b>
		</h1>
		<table class="bg-success">
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>phone</th>
					<th>Username</th>
					<th>Enabled</th>
				</tr>
			</thead>
			<c:forEach items="${customerList}" var="customer">
				<tr>
					<td>${customer.customername}</td>
					<td>${customer.email}</td>
					<td>${customer.phone}</td>
					<td>${customer.username}</td>
					<td>${customer.enabled}</td>

				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>