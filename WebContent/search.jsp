<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
	<br/>
	<form action="jsp-servlet-jdbc-mysql-crud-examplee">
			 
			<button type="submit" class="btn btn-secondary"> <i class="fas fa-arrow-left"></i> Go home </button>
			 
			</form>
		<table class="table table-bordered mt-5" border="1">
			<thead style="background-color: tomato">
				<tr>
					<th>ID</th>
					<th>firtName</th>
					<th>lastName</th>
					<th>groupp</th>
					<th>phoneNumber</th>

				</tr>
			</thead>
			<%
				try {

					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?useSSL=false", "root",
							"020903");
					Statement st = con.createStatement();
					String user = request.getParameter("user");
					String sqlStr = "select * from users where lastName = '" + user + "'  ";
					ResultSet rs = st.executeQuery(sqlStr);
					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt("id")%></td>
				<td><%=rs.getString("firtName")%></td>
				<td><%=rs.getString("lastName")%></td>
				<td><%=rs.getString("groupp")%></td>
				<td><%=rs.getString("phoneNumber")%></td>

			</tr>
			<%
				}
				} catch (Exception e) {
					System.out.print(e.getMessage());
				}
			%>
		</table>
	</div>
</body>
</html>