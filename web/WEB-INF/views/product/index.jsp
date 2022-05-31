<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
    <link href="${root}/css/product.css" rel="stylesheet" type="text/css"/>
</head>
<div class="row" style="margin-left:5%; margin-top:2%; ">
    <c:forEach var="product" items="${list}">
        <div class="col-sm-4 py-3">
            <div class="card">
                <form action="${pageContext.request.contextPath}/cart/add.do">
                    <div class="img_scale"><img src="${root}/images/products/${product.id}.jpg" width="90%" /></div><br/>
                    Id: ${product.id}<br/>
                    <input type="hidden" value="${product.id}" name="id"/>
                    Name: ${product.name}<br/>
                    Description: ${product.description}<br/>
                    Price: <fmt:formatNumber value="${product.price}" pattern="$#,##0.00" /><br/>
                    Discount <fmt:formatNumber value="${product.discount}" pattern="#%" /><br/>
                    Price: <strike><fmt:formatNumber value="${product.price}" pattern="$#,##0.00" /></strike>
                    <span style="color:red;font-size:20px;">
                        <fmt:formatNumber value="${product.price*(1 - product.discount)}" pattern="$#,##0.00" />
                    </span><br/>
                    Quantity: <input type="number" value="1" name="quantity" style="width:80px;" /><br/>
                    <button type="submit" class="btn btn-sm btn-info" style="margin-top: 20px"><i class="bi bi-cart-plus"></i> Add to Cart</button>
                </form>
            </div>
        </div>

    </c:forEach>
    <div class="abc">

        <div class="col" >
            <br/>
            <form action="${root}/product/index.do">
                <button type="submit" class="btn btn-sm btn-default" name="op" value="FirstPage" title="First Page" <c:if test="${page==1}">disabled</c:if>><i class="bi bi-chevron-bar-left"></i></button>
                <button type="submit" class="btn btn-sm btn-default" name="op" value="PreviousPage" title="Previous Page" <c:if test="${page==1}">disabled</c:if>><i class="bi bi-chevron-left"></i></button>
                <button type="submit" class="btn btn-sm btn-default" name="op" value="NextPage" title="Next Page" <c:if test="${page==totalPage}">disabled</c:if>><i class="bi bi-chevron-right"></i></button>
                <button type="submit" class="btn btn-sm btn-default" name="op" value="LastPage" title="Last Page" <c:if test="${page==totalPage}">disabled</c:if>><i class="bi bi-chevron-bar-right"></i></button>
                <input type="text" name="gotoPage" value="${page}" class="btn btn-sm btn-outline-default" style="text-align: right;width: 32px;" title="Enter page number"/>
                <button type="submit" class="btn btn-sm btn-default" name="op" value="GotoPage" title="Goto Page"><i class="bi bi-arrow-up-right-circle"></i></button>
            </form>
            Page ${page}/${totalPage}
        </div>


    </div>
</div>