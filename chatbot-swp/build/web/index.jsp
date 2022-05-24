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
        <title>Gấu bông FPT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="css/home_page.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--        header-->
        <div>
            <p class="shop_name">Gấu bông</p>
            <h1 class="phone_number">Contact number: 090910509</h1>
        </div>
        <div>
            <ul>
                <li class="homepage_button"><a href="index.html">Home page</a></li>
                <li class="product_button"><a href="product/product.jsp">Product list</a></li>
                <form action="#">
                    <li><input type="text" class="search_bar" placeholder="  Search products..."></li>
                    <li><button type="submit" class="search_button">Search</button></li>
                </form>
                <li style="float: right" class="cart_button"><a href="cart/cart.jsp">Cart</a></li>
                <li style="float: right" class="register_button"><a href="register/register.jsp">Register</a></li>
                <li style="float: right" class="login_button"><a href="login/login.jsp">Login</a></li>
            </ul>
        </div>
        <div class="item">
            <img class="img" src="images/PNG home page/event1.png"/>
        </div>
        <div class="row">
            <div class="column">
                <img src="images/PNG home page/topic1.png" style="width: 100%"/>
            </div>
            <div class="column">
                <img src="images/PNG home page/topic2.png" style="width: 100%"/>
            </div>
            <div class="column">
                <img src="images/PNG home page/topic3.png" style="width: 100%"/>
            </div>
            <div class="column">
                <img src="images/PNG home page/topic4.png" style="width: 100%"/>
            </div>
        </div>
    </div>
</body>
</html>