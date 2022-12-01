<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="<c:url value="/resources/css/email.css" />">
    <body>
    
        <div class="outer" >
        <div class="outer1">
        <div class="inner">
        <div class="header">
            <div class="header-text">
                Verify Your email !
            </div>

            <div class="lower1">
            <div class="body1">
                
                <div class="email">
                    Email:
                </div>

                <div class="email-enter"> 
                    <input type="email" class="searchTerm" placeholder="Email" >
                </div>
            </div>
    

        </div>

        <a href="<c:url value="/otp" />" >    <div class="but">
                <button class="button-37" role="button">Get OTP</button>

            </div></a>

        </div>

        </div>
    </div>
    </div>
    </body>
</html>