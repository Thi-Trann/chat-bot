<%-- 
    Document   : cart
    Created on : May 23, 2022, 9:04:34 PM
    Author     : quckh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<c:if test="${cart.numOfProducts>0}">


    <table class="table table-striped">
        <thead>
            <tr>
                <th class="text-right">No.</th>
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
                            <td><img src="${root}/images/products/${item.id}.jpg" width="30%" /><input type="hidden" value=${item.id} name="id" /> </td>
                            <td>${item.name}</td>
                            <td>${item.description}</td>
                            <td class="text-right"><fmt:formatNumber value="${item.price}" pattern="$#,##0.00" /></td>
                            <td class="text-right"><fmt:formatNumber value="${item.discount}" type="percent" /></td>
                            <td class="text-right"><fmt:formatNumber value="${item.newPrice}" pattern="$#,##0.00" /></td>
                            <td>
                                <input onclick="var result = document.getElementById('${loop.count}'); var qty = result.value; if (!isNaN(qty) & amp; qty > 1)result.value--; return false;" type='button' value='-'   />
                                <input id='${loop.count}' min='1' name='quantity' type='text' value='${item.quantity}' />
                                <input onclick="var result = document.getElementById('${loop.count}'); var qty = result.value;  if (!isNaN(qty))result.value++;return false;trans();" type='button' value='+'  />
                            </td>

<!--                            <td class="text-right"><input type="number" value="${item.quantity}" style="width: 65px; text-align: right;"name="quantity" /></td>-->
                            <td class="text-right"><fmt:formatNumber value="${item.cost}" pattern="$#,##0.00" /></td>
                            <td>                               
                                <button type="submit" class="btn btn-link" formaction="<c:url value="/cart/update.do"/>">Update</button>
                                <button type="submit" class="btn btn-link" formaction="<c:url value="/cart/delete.do"/>">Delete</button>
                            </td>

                        </tr>
                    </form>
                </div>
            </div>

        </c:forEach>

        
    </tbody>
    <tfoot>
        <tr>
            <th></th>
            <th></th>
            <th></th>

            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th>Total</th>
            <th class="text-right"><fmt:formatNumber value="${cart.total}" pattern="$#,##0.00" /></th>
            <th><a href="<c:url value="/cart/empty.do"/>">Empty your cart</a></th>

        </tr>
    </tfoot>
</table>
</c:if>
<c:if test="${cart.numOfProducts<=0 || cart.numOfProducts==null}">
    <div class="container">
        <img class="img-responsive" src="${root}/images/not.png" />
    </div> 
    <h1 style="text-align: center">
        Don't have anything in cart !
    </h1>
    <h1 style="text-align: center">
        <form action='${root}/product/index.do'>
            <button style='    
                    background-color: #f0bc4d;
                    color: rgb(74, 74, 74);
                    font-weight: 500;
                    padding: 10px 55px;
                    display: inline-block;
                    border-radius: 4px;' type='submit'>Go shopping</button>
        </form>     
    </h1>
</c:if>