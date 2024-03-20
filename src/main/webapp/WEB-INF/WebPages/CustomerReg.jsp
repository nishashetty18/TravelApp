<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="frm" uri="http://www.springframework.org/tags/form" %>
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

<div class=" container-fluid">
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">
<div class="card"style="background-color:#EDEAE5">
<div class="card-header">
<h1 style="text-align: center">Register</h1>
</div>
<div class="card-body">
<frm:form method="post" action="newcustinfo" modelAttribute="cust"> 
<p style="text-align: center">
    <label class="form-group">Name:</label>
    <input type="text" id="custName" name="custName" placeholder="Enter name" class="form-control" required>
    <br>
    <label class="form-group">Email:</label>
    <input type="email" id="email" name="email" placeholder="Enter email" class="form-control" required>
    <br>
    <label class="form-group">Password:</label>
    <input type="text" id="password" name="password" placeholder="Enter password" class="form-control" required>
    <br>
    <label class="form-group">Phone:</label>
    <input type="tel" id="phone" name="phone" placeholder="Enter 10 digit phone No" class="form-control" pattern="[0-9]{10}" required>
    <small class="text-muted">Enter a 10-digit phone number (numeric characters only)</small>
    <br>
   
    <input type="submit" value="Register" style="background-color:#FC4A1A"class="btn btn-primary" />
    <a href="login" class="btn btn-secondary">Back</a>
    <br />
    <h3 style="text-align: center">${info}</h3>
</p>
</frm:form>
</div>
</div>
<div class="col-md-4"></div>
</div>
</div>
</div>

</body>
</html>
