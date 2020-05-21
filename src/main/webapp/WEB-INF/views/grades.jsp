<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Grades</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>

<div class="container">
		<h1>Grades</h1>
		
		
		
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Type</th><th>Score</th><th>Total</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ grades }" var="grade">
				<tr>
					<td><c:out value="${ grade.name }" /></td>
					<td><c:out value="${ grade.type }" /></td>
					<td>${ grade.score }</td>
					<td>${ grade.total }</td>
					<td><a href="/grades/delete?id=${ grade.id }">DELETE</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="addgrade" class="btn btn-secondary">Add Grade</a>
	</div>

</body>
</html>