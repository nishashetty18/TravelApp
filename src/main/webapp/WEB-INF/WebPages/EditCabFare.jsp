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
<h1 style="text-align: center">New Vehicle</h1>
</div>
<div class="card-body">
<frm:form  method="post"  action="${pageContext.request.contextPath }/editcfinfo"  modelAttribute="cf"> 
<p style="text-align: center">

    <frm:input type="hidden" path="fare_id" placeholder="Fare id" class="form-control" value="${cf.fare_id}" />
   
	<label class="form-group">From: </label>
    <frm:input type="text" path="fromLoc" placeholder="From location" class="form-control" value="${cf.fromLoc}" />
    <br />
    <label class="form-group">To :</label>
    <frm:input type="text" path="toLoc" placeholder="To location" class="form-control" value="${cf.toLoc}" />
    <br />
     <label class="form-group">Fare :</label>
    <frm:input type="text" path="fare" placeholder="Fare" class="form-control" value="${cf.fare}" />
    <br />
   
    <!-- Add other fields as needed -->
    <input type="submit" value="Update Vehicle" style="background-color:#FC4A1A"class="btn btn-primary" />
    
    <br />
    <h3 style="text-align: center">${info }</h3>
</p>
</frm:form>
</div>
</div>
<div class="col-md-4"></div>
</div>
</div>>
</body>
</html>
