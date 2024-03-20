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
<frm:form  method="post"  action="newvhclinfo"  modelAttribute="vhcl"> 
<p style="text-align: center">
<label class="form-group">Vehicle Name : </label>
<input type="text"  name="vehicle_name"  placeholder="Vehicle Name"  class="form-control" required>
<br />

<label class="form-group">Vehicle NO :</label>
<input type="text"  name="vehicle_no" placeholder="Vehicle No" class="form-control" required>
<br />
<label  class="form-group">Owner Name : </label>
<input type="text"  name="owner_name" placeholder="Owner Name"  class="form-control" required>
<br />
<label  class="form-group">Owner Phone : </label>
<input type="text"  name="owner_phone" placeholder="Owner Phone"  class="form-control"pattern="[0-9]{10}" required>
<small class="text-muted">Enter a 10-digit phone number (numeric characters only)</small>
<br />
<label  class="form-group">Seats: </label>
<input type="text"  name="seats" placeholder="Seats"  class="form-control" required>
<br />
<input type="submit"  value="Add Vehicle"style="background-color:#FC4A1A" class="btn btn-primary" />
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
