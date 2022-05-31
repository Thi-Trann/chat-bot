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
        <form>
            <div class="forget_form">
                <p class="title">Find your account</p>
                <hr/>
                <div class="message">Please enter your email or mobile number to search for your account.</div>
                <input class="input_forget" type="text" placeholder="Enter your Email/Phone number" >
                <hr/>
                <button type="submit" class="find_button">Find</button><br/>
                <button type="reset" class="cancel_button">Cancel</button>
        </form>
    </div>
</body>
</html>
