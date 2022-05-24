<%-- 
    Document   : forget
    Created on : May 24, 2022, 11:48:57 PM
    Author     : SE151515 Cao Trong Hieu
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <div class="container">
    <head>
        <meta charset="UTF-8">
        <link href="${root}/css/Forget.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form class="login_form">
            
                <p class="top">Find your account</p>
                <div class="mess">Please emter your email or mobile number to search for your account.</div>
                <input class="userName" type="text"  placeholder="Enter your phone/Email" name="abc">
                <div class="line">
                <hr/>
                </div>
               <button class="login_button"><a href="../login/index.do">Cancel</a></button>
                <input class="find_button" type="submit" value="Find" name="find">
                
                
        </form>
    </body>
    
    </div>
    
    
    
</html>
