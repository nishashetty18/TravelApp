<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="frm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="adminlinks.jsp"/>
<div class="container-fluid">
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">
<div class="card"style="background-color:#EDEAE5">
<div class="card-header">
<h1 style="text-align: center">New cab Fare</h1>
</div>
<div class="card-body">
<frm:form  method="post"  action="newcfinfo"  modelAttribute="cf"> 
<p style="text-align: center">
<label class="form-group">From : </label>
<input type="text"  name="fromLoc"  placeholder="Starting location" class="form-control" required>
<br />

<label class="form-group">To :</label>
<input type="text"  name="toLoc" placeholder="Ending location" class="form-control"required>
<br />
<label  class="form-group">Fare : </label>
<input type="text"  name="fare" placeholder="Enter fare"  class="form-control"required>
<br />

<input type="submit"  value="Add CabFare" style="background-color:#FC4A1A"class="btn btn-primary" >
<br />
<h3 style="text-align: center">${info }</h3>
</p>
</frm:form>
</div>
</div>
<div class="col-md-4"></div>
</div>
</div>
</body>
</html>
