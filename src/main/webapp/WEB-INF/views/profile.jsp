<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="<c:url value="/resources/css/preview.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/starrating.css" />">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <div>
 <!-------------------------------------------HEADER----------------------------------------------------------> 
                <div class="header">
                  <div class="header1">
                    <div class="heading">${s1.bus_name }</div>
                    
                 <div class = "edit">
                    <button class="button-42" role="button"><a href="<c:url value="/update/${s1.id }" />"><h1>Edit</h1></a>  </button>
                    <button class="button-42" role="button"><a href="<c:url value="/delete/${s1.id }" />"><h1>Delete</h1></a>  </button>
                 </div>
                </div>
                </div>
            
 <!-------------------------------------------HEADER-END----------------------------------------------------------> 
    

<!-------------------------------------------BODY--------------------------------------------------------------> 
<div class="bottom">
    <div class="bottom-left">
         <div class = "image"> 
        <img src = "<c:url value="/resources/images/shop.jpg" />" class="big-image" id="productimg">
      </div>
        <div class="small-img-row">
            <div class="small-img-col">
              <div>
                <img src="<c:url value="/resources/images/shop2.jpg" />" width="100%" height="100vh" class="small-img">
                </div>

            </div>
            <div class="small-img-col">
                <img src="<c:url value="/resources/images/shop.jpg" />" width="100%" height="100vh" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="<c:url value="/resources/images/no_img.jpg" />" width="100%" height="100vh" class="small-img">
            </div>
            <div class="small-img-col">
                <img src="<c:url value="/resources/images/no_img.jpg" />" width="100%" height="100vh" class="small-img">
            </div>
             
            </div>
            <div class="details">
              <div class="details-left">
                <div class="details-text">Address: ${s1.address }</div>
                <div class="details-text">Timming:${s1.open } to ${s1.close }</div>

              </div>
              <div class="details-left">
                <div class="details-text">Phone No: ${s1.phone }</div>
                

              </div>
            </div>

    </div>
    


    <div class="bottom-right">
      <div>
               <div class="main"> 
               <h2 class="head">User Rating</h2>
               <div class="star"> 
               <span class="fa fa-star checked"></span>
               <span class="fa fa-star checked"></span>
               <span class="fa fa-star checked"></span>
               <span class="fa fa-star checked"></span>
               <span class="fa fa-star checked"></span>
              </div>
             </div>
            
               <p><h3>4.8 average based on 294 review</h3></p>

               <div class="row">
                <div class="side">
                  <div>5 star</div>
                </div>
                <div class="middle">
                  <div class="bar-container">
                    <div class="bar-5"></div>
                  </div>
                </div>
                <div class="side right">
                     <div>180</div>
                </div>
                  <div class="side">
                    <div>4 star</div>
                  </div>
                  <div class="middle">
                    <div class="bar-container">
                      <div class="bar-4"></div>
                    </div>
                  </div>
                  <div class="side right">
                    <div>73</div>
               </div>
               <div class="side">
                <div>3 star</div>
              </div>
              <div class="middle">
                <div class="bar-container">
                  <div class="bar-3"></div>
                </div>
              </div>
              <div class="side right">
                <div>15</div>
              </div>
              <div class="side">
                <div>2 star</div>
              </div>
              <div class="middle">
                <div class="bar-container">
                  <div class="bar-2"></div>
                </div>
              </div>
              <div class="side right">
                <div>6</div>
              </div>
              <div class="side">
                <div>1 star</div>
              </div>
              <div class="middle">
                <div class="bar-container">
                  <div class="bar-1"></div>
                </div>
              </div>
              <div class="side right">
                <div>20</div>
              </div>
              

               

    </div>

</div>

<script>
 var productimg = document.getElementById("productimg");
 var smallimg = document.getElementsByClassName("small-img");
 
 smallimg[0].onclick = function()
 {
   productimg.src = smallimg[0].src;
 }
 smallimg[1].onclick = function()
 {
   productimg.src = smallimg[1].src;
 }
 smallimg[2].onclick = function()
 {
   productimg.src = smallimg[2].src;
 }
 smallimg[3].onclick = function()
 {
   productimg.src = smallimg[3].src;
 }

</script>







<!-------------------------------------------BODY-END--------------------------------------------------------->    




</div>

</body>
</html>