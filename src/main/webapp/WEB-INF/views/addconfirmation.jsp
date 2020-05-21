<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<h1>Add this grade?</h1>
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td><c:out value="${ grade.name }" /></td>
			</tr>
			<tr>
				<th scope="row">Type</th>
				<td><c:out value="${ grade.type }" /></td>
			</tr>
			<tr>
				<th scope="row">Score</th>
				<td>${ grade.score }</td>
			</tr>
			<tr>
				<th scope="row">Total</th>
				<td>${ grade.total }</td>
			</tr>
		</table>
		<a class="btn btn-secondary" href="/grades">Confirm Add</a>
	</div>

</body>
</html>