<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a new grade</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>


<div class="container">
		
		<h2>Add a Grade</h2>
		<form action="/addconfirmation" method="post">
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<th scope="row">Type</th>
				<td><input type="text" name="type"/></td>
			</tr>
			<tr>
				<th scope="row">Score</th>
				<td><input type="number" name="score" /></td>
			</tr>
			<tr>
				<th scope="row">Total</th>
				<td><input type="number" name="total" /></td>
			</tr>
			
		</table>
		<button type="submit" class="btn btn-primary">Add</button>
		<a class="btn link" href="/grades">Cancel</a>
		</form>
	</div>


</body>
</html>