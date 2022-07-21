<%-- 
    Document   : paymentHistory
    Created on : Jul 21, 2022, 1:06:37 PM
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
                    <th>Order Id</th>
                    <th>Order date</th>
                    <th>Status</th>
                    <th>Customer Id</th>
                    <th>Staff Id</th>
                    <th>Ship to</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="oh" items="${oh}">
                    <tr>
                        <td>${oh.orderId}</td>
                        <td>${oh.date}</td>
                        <td>${oh.status}</td>
                        <td>${oh.customerId}</td>
                        <td>${oh.staffId}</td>
                        <td>${oh.shipToAddress}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
