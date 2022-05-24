<%-- 
    Document   : cart
    Created on : May 23, 2022, 9:04:34 PM
    Author     : quckh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<table class="table table-striped">
    <thead>
        <tr>
            <th class="text-right">No.</th>
            <th class="text-right">Name</th>
            <th>Image</th>
            <th>Description.</th>
            <th class="text-right">Old price</th>
            <th class="text-right">Discount</th>
            <th class="text-right">New Price</th>
            <th class="text-right">Quantity</th>
            <th class="text-right">Cost</th>
            <th>Operations</th>
        </tr>
    </thead>
    
    <tbody>
        
    </tbody>
    
    <tfoot>
    <tr>
        <th></th>
        <th></th>
        <th></th>
        <th>Total</th>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
        <th class="text-right"><fmt:formatNumber value="${cart.total}" type="currency" /></th>
        <th><a href="<c:url value="/cart/empty.do"/>">Empty your cart</a></th>
    </tr>
</tfoot>
</table>