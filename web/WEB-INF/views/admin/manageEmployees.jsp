<%-- 
    Document   : manageEmployees
    Created on : Jun 6, 2022, 6:18:46 PM
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
        <h1>Manage Employees</h1>
        <form action="${pageContext.request.contextPath}/admin/generateNewEmployee.do">
            <button style="float: right; border-radius: 50px;background-color: #f0bc4d; height: 50px;" ><i class="bi bi-plus-square"></i> Generate new employee</button>

        </form>
        <table class="table table-striped">
            <thead>
                <tr style="text-align:  center">
                    <th>No.</th>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Phone number</th>
                    <th>Address</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Username</th>
                    <th>Password</th>
                    <th>Manage</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="elist" items="${elist}" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td>${elist.id}</td>
                        <td>${elist.name}</td>
                        <td>${elist.phone}</td>
                        <td>${elist.address}</td>
                        <td>${elist.email}</td>
                        <td>${elist.gender}</td>
                        <td>${elist.userName}</td>
                        <td>${elist.password}</td>
                        <td>
                            <form action="${pageContext.request.contextPath}/admin/updateEmployee.do">
                                <input type="hidden" value="${elist.id}" name="id"/>
                                <button style="width: 100px; border-radius: 25px;"><i class="bi bi-pencil"></i> Update</button>
                            </form>
                            <form action="${pageContext.request.contextPath}/admin/deleteEmployee.do">
                                <input type="hidden" value="${elist.id}" name="id"/>
                                <button style="width: 100px; border-radius: 25px;"><i class="bi bi-eraser"></i> Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach> 
            </tbody>
        </table>

    </body>
</html>
