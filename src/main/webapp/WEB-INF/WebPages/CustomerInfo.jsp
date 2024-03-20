<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body{
margin:0;
padding:0;
font-family:montserrat;
background-color:#303C6C;
height:100vh;
overflow: hidden;
}
.center{
position: absolute;
top:50%;
left:50%;
transform:translate(-50%, -50%);
width:400px;
background:#303C6C;
border-radius:10px;
}
.center h1{
text-align:center;
padding:0 0 20px 0;
border-bottom:1px solid silver;
}
.center h2{
text-align:center;


}
.center form{
padding:0 30px;

}
form.txt_field{
position:relative;
border-bottom:2px solid #adadad;
margin:30px 0;
}
.txt_field input{
width:100%
padding:0 5px;
height:40px;
fomt-size:16px;
border-radius:14px;
}

</style>
</head>
<body>




<jsp:include page="customerlinks.jsp"/>
<h2 style="text-align: center">Welcome</h2>
<body>
<div class="center">


<p style="text-align:center">
<br /><br />
<a href="addcab" class="btn btn-primary"style="background-color:#FC4A1A">Book Cab</a>

<br /><br />


</p>
</div>





</body>
</html>