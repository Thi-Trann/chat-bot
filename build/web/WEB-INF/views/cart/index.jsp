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
    <link href="${root}/css/cart.css" rel="stylesheet" type="text/css"/>
</head>
<c:if test="${cart.numOfProducts>0}">


    <table class="table table-striped">
        <thead>
            <tr>
                <th >No.</th>
                <th style=" text-align: center;">Image</th>
                <th style=" text-align: center;">Name</th>
                <th style=" text-align: center;">Description.</th>
                <th style=" text-align: center;">Old price</th>
                <th style=" text-align: center;">Discount</th>
                <th style=" text-align: center;" >New Price</th>
                <th style=" text-align: center;">Quantity</th>
                <th style=" text-align: center;">Cost</th>
                <th style=" text-align: center;">Operations</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="item" items="${cart.items}" varStatus="loop">
            <div class="row">
                <div class="col">

                    <tr>

                        <td >${loop.count}</td>
                        <td style=" text-align: center;" ><img src="${root}/images/products/${item.id}.jpg" width="30%" /><input type="hidden" value=${item.id} name="id" /> </td>
                        <td style=" text-align: center;">${item.name}</td>
                        <td style=" text-align: center;">${item.description}</td>
                        <td style=" text-align: center;"><fmt:formatNumber value="${item.price}" pattern="$#,##0.00" /></td>
                        <td style=" text-align: center;"><fmt:formatNumber value="${item.discount}" type="percent" /></td>
                        <td style=" text-align: center;"><fmt:formatNumber value="${item.newPrice}" pattern="$#,##0.00" /></td>
                        
                        <td     style=" text-align: center;">
<!--                            <script>var name =${item.id} +"a";document.write(name);</script>-->
                            
                            <c:set var = "name" scope = "session" value = "${item.id*99+3105}"/>
                            
                            
                            <form method="post" action="update.do" id='${name}' >
                                <input type="hidden" name="id"  value=${item.id} >
                              
                                <input onclick="var result = document.getElementById('${loop.count}'); var qty = result.value; if( !isNaN(qty) &amp; qty > 1 ) result.value--;document.getElementById('${name}').submit();return false;" type='button' value='-' />
                                <input id='${loop.count}' style="width:50px;"  min='1' name='quantity' type='text' value='${item.quantity}' />
                                <input onclick="var result = document.getElementById('${loop.count}'); var qty = result.value;  if (!isNaN(qty))
                                            result.value++;document.getElementById('${name}').submit();
                                        return false;
                                        " type='button' value='+'  />

                         
                        </td>

<!--                            <td class="text-right"><input type="number" value="${item.quantity}" style="width: 65px; text-align: right;"name="quantity" /></td>-->
                    <td style=" text-align: center;"><fmt:formatNumber value="${item.cost}" pattern="$#,##0.00" /></td>
                    <td style=" text-align: center;">                               
                       <button type="submit" class="btn btn-link" formaction="<c:url value="/cart/delete.do"/>">Delete</button>
                    </td>

                    </tr>

                </div>
            </div>
   </form>
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
           
            <th style=" text-align: right; ">Total:</th>
            <th style=" text-align: center;" ><fmt:formatNumber value="${cart.total}" pattern="$#,##0.00" /></th>
            <th style=" text-align: center;"><a href="<c:url value="/cart/empty.do"/>">Empty your cart</a></th>

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
            <button class="shopping_button" type='submit'><span>Go shopping</span></button>
        </form>     
    </h1>
</c:if>