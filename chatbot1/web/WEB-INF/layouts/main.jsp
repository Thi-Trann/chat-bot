<%-- 
    Document   : main
    Created on : May 23, 2022, 11:34:44 PM
    Author     : quckh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<html>
    <head>
        <title>Gấu bông FPT</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">    
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="${root}/css/layout.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--        header-->
        <div>
            <p>Gấu bông</p>
            <h1 style="">Contact number: 090910509</h1>
        </div>
        <form action="#" class="form_main_layout">
            <div>
                <ul>
                    <li style="margin-left: 30px;" ><a href="<c:url value="/"/>">Home page</a></li>
                    <li  style="margin-left: 100px;"><a href="<c:url value="/product/index.do"/>">Product list</a></li>
                    <li  style="float: right;margin-right: 30px;margin-top: 20px;"><a href="<c:url value="/cart/index.do"/>">Cart</a></li>
                    <li  style="float: right;margin-right: 100px;margin-top: 20px;"><a href="<c:url value="/register/index.do"/>">Register</a></li>
                    <li  style="float: right;margin-right: 100px;margin-top: 20px;"><a href="<c:url value="/login/index.do"/>">Login</a></li>
                    <input class="search_bar" type="text" placeholder="  Search product..."/><button class="search_button" type="submit">Search</button>
                </ul>
            </div>
        </form>
        <!--        body-->
            <div>                    
                <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp"/>
            </div>
    </body>
</html>
