<%-- 
    Document   : forget
    Created on : May 24, 2022, 11:48:57 PM
    Author     : SE151515 Cao Trong Hieu
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="${root}/css/forget.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="forget_form">
        <form action="${pageContext.request.contextPath}/login/forget_handler.do" method="post">
            <div >
                <p class="title">Find your account</p>
                
                <div class="message">Please enter your email or mobile number to search for your account.</div>
                <input class="input_forget" type="email" name="email" placeholder="Enter your Email" ><br>
                <div style="text-align: center; margin-top: 10px;" > ${mess}</div>
              
                <button type="submit" class="find_button"><span>Find</span></button><br/>
                <button type="submit" class="cancel_button" formaction="<c:url value="/login/login.do"/>"><span>Cancel</span></button>
       
        </div>
        </form>
    </div>
</body>
</html>
