<%-- 
    Document   : orderDetail
    Created on : Jul 21, 2022, 3:05:39 PM
    Author     : quckh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Order ID</th>
                    <th>Product id</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Discount</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="od" items="${od}" varStatus="loop">
                <tr>
                    <td>${loop.count}</td>
                    <td>${od.orderId}</td>
                    <td>${od.productId}</td>
                    <td>${od.quantity}</td>
                    <td>${od.price}</td>
                    <td>${od.discount}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
