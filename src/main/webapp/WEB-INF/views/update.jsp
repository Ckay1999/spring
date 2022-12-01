<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="<c:url value="/resources/css/form.css" />" rel="stylesheet">
</head>
<body>

<div class="main" ></div>
<div class="register">

<h2>Update Business Information</h2>
<form action="${pageContext.request.contextPath }/handle_updating" method="post" id="register">

  <div class="form-group">
    <label for="Id">Id</label>
    <input type="text" class="textinp"  placeholder="id" name="id" value=${s1.id } hidden>
  </div>
  
  <div class="form-group">
    <label for="name">Enter your business name</label>
    <input type="text" class="textinp" id="name" placeholder="Name" name="bus_name" value=${s1.bus_name } required>
  </div>

  <div class="form-group">
    <label for="e">Email address</label>
    <input type="email" class="textinp" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" value=${s1.email } name="email" >
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="textinp" id="exampleInputPassword1" placeholder="Password" name="password" value=${s1.password }>
  </div>

  <div class="form-group">
    <label for="phone">Phone number</label>
    <input type="text" class="textinp" placeholder="Phone number" name="phone" value=${s1.phone } required>
  </div>
  
    <div class="form-group">
    <label for="address">Address</label>
    <input type="text" class="textinp"  placeholder="Address" aria-describedby="address" name="address" value=${s1.address } required>
  </div>
  
  
    <div class="form-group">
    <label for="Pincode">Pincode</label>
    <input type="text" class="textinp" id="pin" placeholder="Pincode" name="pincode" value=${s1.pincode } required>
  </div>
  
  <div class="form-group">
    <label for="Opening hour">Opening hours(Please mention time in '--:-- AM or PM format')</label>
    <input type="text" class="textinp"  placeholder="Opening hours" aria-describedby="open" name="open" value=${s1.open } required>
  </div>
  
  <div class="form-group">
    <label for="Closing hour">Closing hours</label>
    <input type="text" class="textinp"  placeholder="Closing hours" aria-describedby="close" name="close" value=${s1.close } required>
  </div>
  
  <div class="form-group">
    <label for="Category">Category</label>
    <input type="text" class="textinp"  placeholder="Category" name="type"  value=${s1.type } required>
  </div>
  

  <button type="submit" class="btn btn-primary">Update</button>
</form> 
</div> <!-- End Register here-->
</div> <!-- End Main here-->

</body>
</html>