<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="adminlinks.jsp"/>
 <div class="container-fluid">
     <br />
    	
    <div class="row">
   
    		<h3 class="text-center"style="color:#36455F;"><b>Cab Fare</b></h3>
    	
    		<div class="container text-left">
    			&nbsp;&nbsp;&nbsp;&nbsp;<a href="newcabfare" class="btn btn-primary"style="background-color:#36455F;margin-left:7%">Add Cab Fare</a>
    		</div>
    		<br><br />
    		<div class="row">
    		<div class="col-md-1"></div>
    		<div class="col-md-10">
<table class="table table-bordered" style="text-align:center; --bs-table-bg:#EDEAE5;">
						<thead style=" --bs-table-bg:#FC4A1A">
<tr>
<th>Id</th>
<th>From</th>
<th>To</th>
<th>Fare</th>

<th>Operations</th>
</thead>
</tr>
<c:forEach  var = "cf"  items="${cflist }">
<tr>
	<td>${cf.fare_id }
	<td>${cf.fromLoc }</td>
	<td>${cf.toLoc  }</td>
	<td>${cf.fare  }</td>

	<td>
		<a class="btn btn-secondary" style="background-color:#36455F;" href="editcf/${cf.fare_id }">Edit</a>
		<a class="btn btn-danger" href="delcf/${cf.fare_id }">Delete</a>
	</td>
</tr>
</c:forEach>
</table>
</div>
<div class="col-md-1"></div>
</div>

</body>
</html>