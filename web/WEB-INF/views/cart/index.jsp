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
            <th class="text-right">Id</th>
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
        <c:forEach var="item" items="${cart.items}" varStatus="loop">
        <form>
            <tr>
                <td class="text-right">${loop.count}</td>
                <td class="text-right">${item.id}</td>
                <td><img src="<c:url value="/products/${item.id}.jpg" />" height="60" /> </td>
                <td>${item.description}</td>
                <td class="text-right"><fmt:formatNumber value="${item.price}" type="currency" /></td>
                <td class="text-right"><fmt:formatNumber value="${item.discount}" type="percent" /></td>
                <td class="text-right"><fmt:formatNumber value="${item.newPrice}" type="currency" /></td>
                <td class="text-right"><input type="number" value="${item.quantity}" name="quantity" /></td>
                <td class="text-right"><fmt:formatNumber value="${item.cost}" type="currency" /></td>
                <td>
                    <input type="hidden" value=${item.id} name="id" />
                    <button type="submit" class="btn btn-link" formaction="<c:url value="/cart/update.do"/>">Update</button>
                    <button type="submit" class="btn btn-link" formaction="<c:url value="/cart/delete.do"/>">Delete</button>
                </td>
            </tr>
        </form>
    </c:forEach>
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