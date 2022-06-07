<%-- 
    Document   : manageCustomers
    Created on : Jun 6, 2022, 6:20:34 PM
    Author     : quckh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Manage Customers</h1>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Id</th>
                    <th>Phone number</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Username</th>
                    <th>Manage</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="clist" items="${clist}" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td>${clist.id}</td>
                        <td>${clist.phone}</td>
                        <td>${clist.address}</td>
                        <td>${clist.email}</td>
                        <td>${clist.gender}</td>
                        <td>${clist.userName}</td>
                        <td></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
