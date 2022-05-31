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
            <th>Name</th>
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
        <div class="row">
            <div class="col">
                <form>
                    <tr>

                        <td class="text-right">${loop.count}</td>
                        <td class="text-right">${item.id}</td>
                        <td><img src="${root}/images/products/${item.id}.jpg" width="30%" /> </td>
                        <td>${item.name}</td>
                        <td>${item.description}</td>
                        <td class="text-right"><fmt:formatNumber value="${item.price}" pattern="$#,##0.00" /></td>
                        <td class="text-right"><fmt:formatNumber value="${item.discount}" type="percent" /></td>
                        <td class="text-right"><fmt:formatNumber value="${item.newPrice}" pattern="$#,##0.00" /></td>
                        <td class="text-right"><input type="number" value="${item.quantity}" name="quantity" /></td>
                        <td class="text-right"><fmt:formatNumber value="${item.cost}" pattern="$#,##0.00" /></td>
                        <td>
                            <input type="hidden" value=${item.id} name="id" />
                            <button type="submit" class="btn btn-link" formaction="<c:url value="/cart/update.do"/>">Update</button>
                            <button type="submit" class="btn btn-link" formaction="<c:url value="/cart/delete.do"/>">Delete</button>
                        </td>

                    </tr>
                </form>

            </c:forEach>
        </div>
    </div>
</tbody>
<tfoot>
    <tr>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
        <th>Total</th>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
        <th class="text-right"><fmt:formatNumber value="${cart.total}" pattern="$#,##0.00" /></th>
        <th><a href="<c:url value="/cart/empty.do"/>">Empty your cart</a></th>
    </tr>
</tfoot>
</table>
