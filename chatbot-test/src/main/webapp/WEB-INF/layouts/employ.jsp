<%-- 
    Document   : employ
    Created on : Jun 28, 2022, 11:15:48 PM
    Author     : SE151515 Cao Trong Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
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
                                <li><a href="<c:url value="/"/>" class="text-dark"><i class="bi bi-house"></i> Home page</a></li>
                                <li><a href="<c:url value="/product/index.do"/>"class="text-dark"><i class="bi bi-bag"></i> Product list</a></li>
                                <li><a href="<c:url value="/cart/index.do"/>"class="text-dark"><i class="bi bi-cart"></i> Cart :<c:if test="${cart.numOfProducts==null}"> 0 </c:if><c:if test="${cart.numOfProducts!=null}"> ${cart.numOfProducts} </c:if> 
                                            product(s)</a></li>
                                </ul>
                            <c:if test="${login_success == null}">
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="<c:url value="/login/login.do"/>"class="text-dark"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                                </ul>
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="<c:url value="/register/register.do"/>"class="text-dark"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
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
                            <form action="${pageContext.request.contextPath}/product/search.do">
                                <ul class="nav navbar-nav">
                                    <li class="search_form" style="margin-top:11px"><input type="text" placeholder="Search product..." name="productName"/><button type="submit" style="background-color: #D59B00;height: 25px"><i class="bi bi-search"></i></button></li>
                                </ul>
                            </form>
                        </div>
                    </div>
                </nav>  
                <div class="container-fluid">
                    <div class="row content">
                        <div class="col-sm-3 sidenav" style="background-color: #FFFAB3; border: 1px solid black; height: 100vh; margin-top: 10px;">
                            <ul class="nav nav-pills nav-stacked" style="display: block; margin-top: 10px;">
                                <li>
                                    <h3 style="font-weight: bold;">
                                        Welcome ${roleuser} to Brown Ted 
                                    </h3>
                                </li>
                                <hr/>
                                <br/>
                                <form action="${pageContext.request.contextPath}/emp/index.do">
                                    <li> <button class="admin_btn">Your profile</button></li>
                                </form>
                                <form action="${pageContext.request.contextPath}/emp/checkbill.do">
                                    <li> <button class="admin_btn">Check bills</button></li>
                                </form>
<!--                                <form action="${pageContext.request.contextPath}/admin/manageProducts.do">
                                    <li> <button class="admin_btn">Manage products</button></li>
                                </form>
                                <form action="${pageContext.request.contextPath}/admin/manageOrders.do">
                                    <li> <button class="admin_btn">Manage orders</button></li>
                                </form>-->
                            </ul><br/>
                        </div>
                        <div class="col-sm-9">
                            <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp"/>
                        </div>
                    </div>
                </div>
             </body>           
                        
                        
                        
</html>
