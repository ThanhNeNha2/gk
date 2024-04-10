<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="https://www.facebook.com/profile.php?id=100015480104825" class="navbar-brand"> Võ Chí Thanh </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Home</a></li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Users</h3>
			<hr>
			<div class=" text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success"> <i class="fas fa-plus"></i> Add
					New User</a>
			</div>
			<br/>
			<form action="search.jsp">
			<div lass="form-group">
			<input type="text" placeholder="Search user" name="user" class="form-control"/> 
			<br/>
			<button type="submit" class="btn btn-success"> <i class="fas fa-search"></i> Search </button>
			</div>
			</form>
			<br/>
			<br/>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>firtName</th>
						<th>lastName</th>
								<th>groupp</th>
						<th>phoneNumber</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.firtName}" /></td>
							<td><c:out value="${user.lastName}" /></td>
							<td><c:out value="${user.groupp}" /></td>
							<td><c:out value="${user.phoneNumber}" /></td>
							<td><a href="edit?id=<c:out value='${user.id}' />"><button class="btn btn-warning"> <i class="fas fa-edit"></i> Edit</button></a>
								&nbsp;&nbsp;&nbsp;  <a
								href="delete?id=<c:out value='${user.id}' />"><button class="btn btn-danger"> <i class="fas fa-trash"></i> Delete</button></a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
