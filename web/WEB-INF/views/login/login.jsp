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
    <body>
        <!--        header-->
        <div class="login_form">
            <form action="${pageContext.request.contextPath}/login/login_handler.do" method="post">
                <p class="login_header">Login</p>
                <br>
                <input class="userName" type="text" placeholder="Enter Username" name="userName"><br/>
                <input class="password" type="password" placeholder="Enter Password" name="password"><br/> 
                <a style="margin-left: 235px;" href="<c:url value="/login/forget.do"/>">Forgot your password? Click here</a><br/>
                <label style="margin-left: 290px;">
                    <input type="checkbox" checked="checked" name="rememberMe"> Remember me
                </label><br/><br/>     
                <button style="margin-left: 220px;" class="login_button" type="submit"><span>Login</span></button>
            </form>

            <form action="${root}/register/index.do">
                <button style="margin-left: 220px;" type="submit" class="register_button"><span>Register</span></button>
            </form>
        </div>
    </body>
</html>
