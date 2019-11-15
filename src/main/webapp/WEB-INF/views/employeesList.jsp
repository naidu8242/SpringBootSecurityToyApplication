<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h1>List of Employees</h1>
	<%-- <table border = "1">
		<tr>
			<th>Name</th>
			<th>Gender</th>
			<th>Department</th>
			<th>Date of Birth</th>
			<th>Actions</th>
		</tr>
		<c:forEach items="${list}" var="e">
			<tr>
				<td>${e.name}</td>
				<td>${e.gender}</td>
				<td>${e.department}</td>
				<td>${e.dob}</td>
				<td>
					<a href = "${pageContext.request.contextPath}/employee/${e.id}">Edit</a>
					|
					<a href = "${pageContext.request.contextPath}/delete/${e.id}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	 --%>
	
	<br><br>
	
	
	<button onclick="window.location.href='${pageContext.request.contextPath}/openEmployeeView'">Add Employee</button>
	
	<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Name</th>
				<th>Gender</th>
				<th>Department</th>
				<th>Date of Birth</th>
				<th>Actions</th>
            </tr>
        </thead>
        <tbody>
                <c:forEach items="${list}" var="e">
					<tr>
						<td>${e.name}</td>
						<td>${e.gender}</td>
						<td>${e.department}</td>
						<td>${e.dob}</td>
						<td>
							<a href = "${pageContext.request.contextPath}/employee/${e.id}">Edit</a>
							|
							<a href = "${pageContext.request.contextPath}/delete/${e.id}">Delete</a>
						</td>
					</tr>
		</c:forEach>
        </tbody>
         
    </table>
</body>


<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>

</html>