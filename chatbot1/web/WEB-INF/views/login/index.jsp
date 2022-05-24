<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="${root}/css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--        header-->
        <form class="login_form">
            <div>
                <input class="userName" type="text" placeholder="   Enter Username" name="usName"><br/>
                <input class="password" type="password" placeholder="   Enter Password" name="psw"><br/> 
                <a style="margin-left: 220px;" href="#">Forgot your password? Click here</a><br/>
                <label style="margin-left: 290px;">
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                </label><br/><br/>
                <button class="login_button" type="submit"><a href="../product/product_page.jsp">Login</a></button><br/><br/>
                <button class="register_button"><a href="<c:url value="/register/index.do"/>">Register</a></button>
            </div>
        </form>
    </body>
</html>
