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
        <title>Brown Ted</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>   
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="${root}/css/layout.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-inverse" style="background-color:#F49CEC; ">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar" style="background-color:#F49CEC; ">
                    <ul class="nav navbar-nav" style="display: inline;">
                        <li><a style="padding: 0px; padding-right: 5px;" class="navbar-collapse" href="<c:url value="/"/>">
                                <img src="${root}/images/logo.png" height="50"/>
                            </a></li>
                        <li><a href="<c:url value="/"/>" class="text-dark"><i class="bi bi-house"></i> Home page</a></li>
                        <li><a href="<c:url value="/product/index.do"/>"class="text-dark"><i class="bi bi-bag"></i> Product list</a></li>
                        <li><a href="<c:url value="/cart/index.do"/>"class="text-dark"><i class="bi bi-cart"></i> Cart</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="<c:url value="/login/index.do"/>"class="text-dark"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="search_form"><input type="text" placeholder="Search product..."/><button type="submit" style="background-color: #F49CEC;height: 25px"><i class="bi bi-search"></i></button></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div>
            <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp"/>
        </div>

    </body>
    <footer class="container-fluid text-center">
        <p>Copyright by Team 6 - SWP391</p>
    </footer>
</html>
