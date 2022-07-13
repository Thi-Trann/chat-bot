<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="${root}/css/login.css" rel="stylesheet" type="text/css"/>      
    </head>
    <body class="background">
        <input type="hidden" id ="resu" value${sucmess}>
 

        <div class="login_form">
            <div class="flex flex-col justify-conter items-center px-5">
            <form action="${pageContext.request.contextPath}/login/login_handler.do" method="post" class="w-full flex flex-col items-center" >
                <h2 style="font-weight: bold; font-size: 30px; text-align: center;">Login</h2>
         
                
                <input class="userName" value="${userName}" type="text" placeholder="Enter Username" name="userName">
                <input class="password" value="${password}" type="password" placeholder="Enter Password" name="password">
                
                <label style="">
                    <input type="checkbox" checked="checked" name="rememberMe"> Remember me
                </label>
                <a   href="<c:url value="/login/forget.do"/>" style="text-align: center; font-size:12px">Forgot your password? Click here</a>
                
               
                <p style="text-align: left; color: red">${mess}</p><br/>
                <button style="" class="login_button" type="submit"><span>Login</span></button>
            </form>
            <form action="${root}/register/index.do">
                <button style="" type="submit" class="register_button"><span>Register</span></button>
            </form>
            </div>
        </div>
    </body>
</html>
