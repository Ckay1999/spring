<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="<c:url value="/resources/css/form.css" />" rel="stylesheet">
    <title>Hello, world!</title>
  </head>
  <body>

<div class="main" ></div>
<div class="register">

<h2>Register Here</h2>
 <h4>Already a user?  <a href="<c:url value="/login" />">Click here to login</a></h4>
<form action="processform" method="post" id="register">
  <div class="form-group">
    <label for="name">Enter your business name</label>
    <input type="text" class="textinp" id="name" placeholder="Name" name="bus_name" required>
  </div>

  <div class="form-group">
    <label for="e">Email address</label>
    <input type="email" class="textinp" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email" required>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="textinp" id="exampleInputPassword1" placeholder="Password" name="password" required>
  </div>

  
  <div class="form-group">
    <label for="phone">Phone number</label>
    <input type="text" class="textinp" placeholder="Phone number" name="phone" required>
  </div>
  
    <div class="form-group">
    <label for="address">Address</label>
    <input type="text" class="textinp"  placeholder="Address" name="address" required>
  </div>
  
  
    <div class="form-group">
    <label for="Pincode">Pincode</label>
    <input type="text" class="textinp" id="pin" placeholder="Pincode" name="pincode" required>
  </div>
  
  <div class="form-group">
    <label for="Category">Opening hours</label>
    <input type="text" class="textinp"  placeholder="Opening hours" name="open" required>
  </div>
  
  <div class="form-group">
    <label for="Category">Closing hours</label>
    <input type="text" class="textinp"  placeholder="Closing hours" name="close" required>
  </div>
  
  <div class="form-group">
    <label for="Category">Category</label>
    <input type="text" class="textinp"  placeholder="Category" name="type" required>
  </div>
  

  <button type="submit" class="btn btn-primary">Submit</button>
</form> 
</div> <!-- End Register here-->
</div> <!-- End Main here-->

     </body>
</html>