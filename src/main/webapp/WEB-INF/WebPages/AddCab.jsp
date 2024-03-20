<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="frm" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
    function showAlert() {
        alert("Cab booked successfully!");
    }
</script>
<body>
<jsp:include page="customerlinks.jsp"/>
<div class="container-fluid">
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">
<div class="card" style="background-color:#EDEAE5">
<div class="card-header">
<h1 style="text-align: center">Book cab</h1>
</div>
<div class="card-body">
<frm:form method="post" action="newcabinfo" modelAttribute="bkcab" onsubmit="showAlert()"> 
<p style="text-align: center">
    <label class="form-group">Date:</label>
    <input type="date" id="date" name="date" placeholder="select date" class="form-control" required>
    <br>
    <label class="form-group">Customer Name:</label>
    <input type="text" id="customerName" name="customer_name" placeholder="Enter customer Name" class="form-control" required>
    <br>
    <label class="form-group">Customer Phone No:</label>
    <input type="tel" id="customerPhone" name="customer_phone" placeholder="Enter 10 digit phone No" class="form-control" pattern="[0-9]{10}" required>
    <small class="text-muted">Enter a 10-digit phone number (numeric characters only)</small>
    <br>
    <label class="form-group">Vehicle name:</label>
    <select id="vehicleNo" name="vehicle_no" class="form-control" required>
        <option value="">Select Vehicle</option>
        <c:forEach items="${vhcllist}" var="vhcl">
            <option value="${vhcl.vehicle_id}">${vhcl.vehicle_name}</option>
        </c:forEach>
    </select>
    <br>
    <label class="form-group">From:</label>
    <select id="fromLocation" name="fromLoc" class="form-control" required onchange="populateToLocations()">
        <option value="">Select Location</option>
        <!-- Options for fromLocation -->
        <c:forEach items="${cflist}" var="cf">
            <option value="${cf.fare_id}">${cf.fromLoc}</option>
        </c:forEach>
    </select>
    <br>
    <label class="form-group">To:</label>
	    <select id="toLocation" name="toLoc" class="form-control" required>
	    <option value="">Select Location</option>
	   
		</select>
    <br>
		<label  class="form-group">Fare : </label>
	    <select id="fare" name="fare" class="form-control" readonly>
	    <option value="">Select Location</option>
	   
		</select>
	<br>
    
    <input type="submit" value="Book Cab" style="background-color:#FC4A1A"class="btn btn-primary" />&nbsp&nbsp&nbsp
    <a href="customerinfo"class="btn btn-secondary">Back</a>
    <br />
    <h3 style="text-align: center">${info}</h3>
</p>
</frm:form>
</div>
</div>
<div class="col-md-4"></div>
</div>
</div>

<script type="text/javascript">
function populateToLocations() {
    var fromLocation = document.getElementById("fromLocation").value;
    var toLocationDropdown = document.getElementById("toLocation");
    var fareDropdown = document.getElementById("fare");
    toLocationDropdown.innerHTML = ''; // Clear previous options
    fareDropdown.innerHTML='';

    // Populate options based on fromLocation using JSP forEach loop
    <c:forEach items="${cflist}" var="cf">
        if ('${cf.fare_id}' == fromLocation) {
            var option = document.createElement("option");
            option.value = "${cf.fare_id}";
            option.text = "${cf.toLoc}";
            toLocationDropdown.appendChild(option);
        }
        if ('${cf.fare_id}' == fromLocation) {
            var option = document.createElement("option");
            option.value = "${cf.fare_id}";
            option.text = "${cf.fare}";
            fareDropdown.appendChild(option);
        }
        
    </c:forEach>
}

</script>
</div>
</body>
</html>
