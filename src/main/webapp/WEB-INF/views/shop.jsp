<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
    <link rel="stylesheet" href="<c:url value="/resources/css/shops.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/carousal.css" />">

    <div>
<!-------------------------------------------HEADER----------------------------------------------------------> 
        <div class="header">
        <div class="header222">
            <div class="heading">Shops near you</div>
            
           <div class="search-bar">  <div class="search">
            <input type="text" class="searchTerm" placeholder="Search">
            <button type="submit" class="searchButton">
              <i class="fa fa-search"></i>
           </button>
         </div> </div>

    	</div>
        </div>
<!--------------------------------------------HEADER-END----------------------------------------------------------> 




<!--------------------------------------MAIN CONTENT---------------------------------------------------------->
            <div class="bottom">


<!--------------------------------------FILTERBOX------------------------------------------------------------->
                <div class="filter">
                    
                    
                    <div class="sub-heading">FILTERS <i class="fa-solid fa-filter"></i></div>
                    <div class="filter-box">
                        <div class="type">
                            <div class="f-heading">Type</div>
                            <hr class="line">
							
							<c:forEach items="${categories }" var="cat">
                            <div class="o"> 
                            <div class="o1">${cat} </div><input type="radio" name="demo1"class="r">
                            </div>
                         	</c:forEach>

                        </div>
                        <div class="location">
                           <div class="f-heading"> Distance</div>
                           <hr class="line">
                           <div class="o"><div class="o1"> 1km </div><div class="r"><input type="radio" name="demo"></div></div>
                           <div class="o"><div class="o1"> 1km-5km </div><div class="r"><input type="radio" name="demo"></div></div>
                          <div class="o"><div class="o1">5km-10km</div> <div class="r"><input type="radio" name="demo"></div></div>
                          <div class="o"><div class="o1"> >10km </div><div class="r"> <input type="radio" name="demo"></div></div>

                            

                        </div>

                       



                    </div>
                </div>
<!--------------------------------------FILTERBOX-END------------------------------------------------------------>



 <!-------------------------------------SHOPPING CARDS------------------------------------------------------->           

               
                  
                <div class="shops">
                   <c:forEach items="${business }" var="bus">
                 
                    <div class="shop-card">
                        <div class="shop-info">
                            <div class="card-top">
                            <div class="card-top-left"> 
                            <div class="shop-name">
                                ${bus.bus_name }
                            </div>

                            <div class="stars"><i class="fa-solid fa-star-sharp"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i></div>
                            </div> <!-- card-top-left  -->
                            <div class="card-top-right">
                               
                               <a href="<c:url value="/review" />"><button class="button-6" role="button" > <i class="gg-pen" ></i> <div class="review-text">Add a review </div></button></a>

                            </div> <!-- card-top-right  -->
                        </div> <!-- card-top  -->
                             <div class="detail-icons">
                            
                                <!-- <a href="https://www.google.com/maps/dir/28.3562493,75.5864235/akshay+market/@28.3560248,75.5861581,17z/data=!3m1!4b1!4m9!4m8!1m1!4e1!1m5!1m1!1s0x39131965c75c7d65:0x9c6eda0a412bb5aa!2m2!1d75.5902689!2d28.3571481" target="_blank"><button class="button-42" role="button" ><i class="fa-solid fa-map ic"></i> Direction</button></a> -->
                                <button class="button-42" role="button" ><i class="fa-solid fa-map ic"></i> Direction</button>
                                <button class="button-42" role="button"><i class="fa-solid fa-earth-europe ic" ></i> Website</button>
                                <button class="button-42" role="button"><i class="fa-solid fa-phone ic"></i> Call</button>
                            </div>

                            <div class="info">
                                <div class="info2"><div class="txt">Address:</div><div>${bus.address }</div></div>
                                <div class="info2"><div class="txt">Pincode:</div><div>${bus.pincode }</div></div>
                                <div class="info2"><div class="txt">Hours:</div><div>${bus.open } to ${bus.close }</div></div>
                                <div class="info2"><div class="txt">Phone:</div><div>${bus.phone }</div></div>

                            </div>
                            <div class="distyp">
                               <div class="dt"> Distance: 0.2km </div>
                               <div class="dt"> Type: ${bus.type }</div>
                            </div>

                        <div >

                    </div>
                  </div>
                  
                  </div>	
                 
                 </c:forEach>   
                </div>
              

                <!------------------------------IMAGE-CAROUSAL----------------------------------------->
   
                
                
<!-------------------------------------------SHOPPINGCARD-END------------------------------------------------>
                
</div>

           

            
            
    </div>
    <script src="https://kit.fontawesome.com/b43947f0dd.js" crossorigin="anonymous"></script>
    <script src="<c:url value="/resources/javascript/carousal.js" />"></script>
    <script src="scripts/shop.js"></script>
  
    <!-- CSS only -->

</html>