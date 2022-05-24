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
               <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>     
                        <link href="${root}/css/layout.css" rel="stylesheet" type="text/css"/>
                        </head>
                        <body>
                            <div clas="container">
                                <div class="row">
                                    <div class="col">
                                        <!--header-->
                                        <div class="header">

                                            <a href="${root}" title="Home Page" class="logo">
                                                <img src="${root}/images/logo.png" height="100" vspace="20"/>  
                                            </a>
                                            <div class='header_name'> Gấu bông</div>
                                            <div class="contact"> Contact number: 090910509</div>
                                        </div>
                                        <!--<form action="#" class="form_main_layout">-->
                                        <div class="move">
                                            <div class="col">
                                                <div class="row">
                                                    <form action="">
                                                        <li  style="margin-left: 5%;"><a href="<c:url value="/"/>">Home page</a></li>
                                                        <li  style="margin-left: 5%;"><a href="<c:url value="/product/index.do"/>">Product list</a></li>
                                                        <li style="margin-left: 18%;">
                                                            <input class="search_bar" type="text" placeholder="Search product..." name="product"/>
                                                            <button class="search_button" type="submit">search <i class="bi bi-search"></i></button>
                                                        </li>
                                                        <li  style="display: inline;float: right;margin-right: 5%;margin-top: 20px;"><a href="<c:url value="/cart/index.do"/>">Cart<i class="bi bi-cart"></i></a></li>
                                                        <li  style="display: inline;float: right;margin-right: 5%;margin-top: 20px;"><a href="<c:url value="/register/index.do"/>">Register <i class="bi bi-pencil-square"></i></a></li>
                                                        <li  style="display: inline;float: right;margin-right: 5%;margin-top: 20px;"><a href="<c:url value="/login/index.do"/>">Login <i class="bi bi-box-arrow-in-right"></i></a></li>
                                                    </form>
                                                </div>
                                            </div>  


                                        </div>
                                    </div>
                                </div>
                                <!--        </form>-->
                                <!--        body-->
                                <div>                    
                                    <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp"/>
                                </div>
                            </div>
                        </body>
                        </html>
