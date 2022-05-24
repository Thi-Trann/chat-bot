<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<html>
    <head>
        <meta charset="UTF-8">
        <link href="../css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--        header-->
        <div>
            <p class="shop_name">Gấu bông</p>
            <h1 class="phone_number">Contact number: 090910509</h1>
        </div>
        <form>
            <div>
                <input class="userName" type="text" placeholder="Enter Username" name="usName"><br/>
                <input class="password" type="password" placeholder="Enter Password" name="psw"><br/> 
                <a style="margin-left: 200px;" href="#">Forgot your password? Click here</a>
                <label>
                    <input type="checkbox" checked="checked" name="remember"> Remember me
                </label><br/>
                <button  style="margin-left: 200px;" type="submit"><a href="../product/product_page.jsp">Login</a></button><br/>
                <button  style="margin-left: 200px;"><a href="../register/register.jsp">Register</a></button>
            </div>
        </form>
    </body>
</html>
