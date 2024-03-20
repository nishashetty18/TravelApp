<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="frm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

</style>
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
<frm:form  method="post"  action="${pageContext.request.contextPath }/editvhclinfo"  modelAttribute="vhcl"> 
<p style="text-align: center">

    <frm:input type="hidden" path="vehicle_id" placeholder="Vehicle id" class="form-control" value="${vhcl.vehicle_id}" />
   
	<label class="form-group">Vehicle Name : </label>
    <frm:input type="text" path="vehicle_name" placeholder="Vehicle Name" class="form-control" value="${vhcl.vehicle_name}" />
    <br />
    <label class="form-group">Vehicle No :</label>
    <frm:input type="text" path="vehicle_no" placeholder="Vehicle No" class="form-control" value="${vhcl.vehicle_no}" />
    <br />
     <label class="form-group">Owner Name :</label>
    <frm:input type="text" path="owner_name" placeholder="Owner name" class="form-control" value="${vhcl.owner_name}" />
    <br />
     <label class="form-group">Owner Phone :</label>
    <input type="text" name="owner_phone" placeholder="Manufacturer" class="form-control" pattern="[0-9]{10}"value="${vhcl.owner_phone}" />
    <small class="text-muted">Enter a 10-digit phone number (numeric characters only)</small>
    <br />
     <label class="form-group">Seats :</label>
    <frm:input type="text" path="seats" placeholder="Manufacturer" class="form-control" value="${vhcl.seats}" />
    <br />
   
    <input type="submit" value="Update Vehicle"style="background-color:#FC4A1A" class="btn btn-primary" />
   
 
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
