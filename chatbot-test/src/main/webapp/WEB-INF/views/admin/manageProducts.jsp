<%-- 
    Document   : manageProducts
    Created on : Jun 6, 2022, 6:20:47 PM
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
        <h1 style="padding: 4px;">Manage Products</h1>
        <hr/>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>No.</th>
                    <td>ID</td>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Discount</th>
                    <th>Operation</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${plist}" varStatus="loop">
                    <tr>
                        <td>${loop.count}</td>
                        <td>${product.id}</td>
                        <td>${product.name}</td>
                        <td>${product.description}</td>
                        <td><fmt:formatNumber value="${product.price}" pattern="$#,##0.00"/></td>
                        <td><fmt:formatNumber value="${product.discount}" pattern="#%" /></td>
                        <td>
                            <form>
                                <input type="hidden" value="${product.id}" name="pid"/>
                                <button formaction="${pageContext.request.contextPath}/admin/updateProduct.do">Update</button>
                                <button formaction="${pageContext.request.contextPath}/admin/deleteProduct.do">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
