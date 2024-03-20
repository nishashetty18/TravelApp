<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<style>
.navbar{
background-color:#303C6C;
}
.navbar-brand{
padding:2px;
margin-left:15px;
color:#FC4A1A;
}
.navbar-text{
color:#F4976C;
font-size:15%;

}
.nav-link{
color:#FC4A1A}
.nav-link:hover{
color:white;
}
</style>
<body>
<nav class="navbar navbar-expand-lg" >
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><h4><b>TravelApp</b></h4></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div id="navbarNav" class="d-flex">
      <ul class="navbar-nav">
       
        <li class="nav-item">
          <a class="nav-link" href="vhcllist"><h5> Vehicles</h5></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="bkcablist"><h5>Booked cabs</h5></a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="cflist"><h5>cab fare </h5></a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="login"><h5>Logout</h5></a> 
        </li>
        
      </ul>
    </div>
  </div>
</nav>



















</body>
</html>