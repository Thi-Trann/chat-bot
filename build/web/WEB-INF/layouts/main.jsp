<%-- 
    Document   : main
    Created on : May 23, 2022, 11:34:44 PM
    Author     : quckh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>Brown Ted</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>   
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css">
        <link href="${root}/css/layout.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <nav class="navbar navbar-inverse" style="background-color:#F1AF00;">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar" style="background-color:#F1AF00 ">
                    <ul class="nav navbar-nav" style="display: inline;">
                        <li><a style="padding: 0px; padding-right: 5px;" class="navbar-collapse" href="<c:url value="/"/>">
                                <img src="${root}/images/logo.png" height="50"/>
                            </a></li>
                            <c:if test="${role == 'ADMIN'}">
                            <li><a href="<c:url value="/home/admin.do"/>"class="text-dark"><i class="bi bi-gear"></i> Manage</a></li>
                            </c:if>
                        <li><a href="<c:url value="/"/>" class="text-dark"><i class="bi bi-house"></i> Home page</a></li>
                        <li><a href="<c:url value="/product/index.do"/>"class="text-dark"><i class="bi bi-bag"></i> Product list</a></li>
                        <li><a href="<c:url value="/cart/index.do"/>"class="text-dark"><i class="bi bi-cart"></i> Cart :<c:if test="${cart.numOfProducts==null}"> 0 </c:if><c:if test="${cart.numOfProducts!=null}"> ${cart.numOfProducts} </c:if> 
                                    product(s)</a></li>
                        </ul>
                    <c:if test="${login_success == null}">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="<c:url value="/login/login.do"/>"class="text-dark"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        </ul>
                    </c:if>
                    <c:if test="${login_success != null}">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="<c:url value="/login/logout.do"/>"class="text-dark"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li style="margin-top: 15px;">${userName}</li>
                        </ul>
                    </c:if>

                    <ul class="nav navbar-nav">
                        <li class="search_form" style="margin-top:11px"><input type="text" placeholder="Search product..."/><button type="submit" style="background-color: #D59B00;height: 25px"><i class="bi bi-search"></i></button></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div>
            <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp"/>
        </div>

        <!-- Chat bot-->
        <section>
            <button class="chat-btn"> 
                <img src="${root}/images/chatbot_icon.png" width="100%"/>
            </button> 
            <div class="chat-popup">
                <div class="chat-header">
                    <div style="width: 40px; height: 40px; border-radius: 50%; border: 2px solid #05c702; padding: 2px 0 0 1px;">
                        <img src="${root}/images/logo.png" class="img-fluid rounded-circle" style="margin: auto"/>
                    </div>
                    <div class="header-text">ChatBot</div>
                    <button class="close-btn"><i class="material-icons"> close</i></button>
                </div>
                <div class="chat-area">
                    <div class="incoming-msg">
                        <span class="bot-msg">Hi, I'm Chatbot</span>
                        <span class="bot-msg">How can I help you?</span>
                    </div>
                </div>
                <div class="input-area">
                    <input type="text" id="txtmsg" placeholder="Enter your message here...">
                    <button class="submit-btn" style="padding-left: 8px"> <i class="material-icons"> send</i></button>
                </div>
            </div>
        </section>
        <div>

        </div>

        <script src="${root}/js/main.js"></script>
    </body>
</html>
