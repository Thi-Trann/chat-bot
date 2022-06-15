<%-- 
    Document   : confirmcheckout
    Created on : Jun 14, 2022, 3:29:55 PM
    Author     : Admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    <body>
        <form>
            <div class="card">
                <div class="card-body mx-4">
                    <div class="container">
                        <p class="my-5 mx-5" style="font-size: 50px; text-align: center">Thank for your purchase !</p>
                        <hr/>
                        <div class="row">
                            <p style="font-size: 20px; font-weight: bold;">Information: </p>
                            <ul> 
                                <li class="text-black mt-1"> Name: ${name}</li>
                                <li class="text-black mt-1"> Phone number: ${phone}</li>
                                <li class="text-black mt-1"> Email: ${email}</li>
                                <li class="text-black mt-1"> Address: ${address}</li>
                            </ul>
                            <hr>
                            <div class="col-xl-10">
                                Your cart:       
                                <c:forEach var="item" items="${cart.items}" varStatus="loop">
                                    ${item.name} x ${item.quantity}     
                                    <br>
                                </div>
                                <div class="col-xl-2">
                                    <p class="float-end">${item.cost}$
                                    </p>
                                </div>
                            </c:forEach>
                            <a href="<c:url value="/cart/index.do"/>">Edit your cart</a>
                            <hr>
                        </div>
                        <div class="row">
                            <div class="col-xl-10">
                                <p>Discount</p>
                            </div>
                            <div class="col-xl-2">
                                <p class="float-end">${item.discount}
                                </p>
                            </div>
                            <hr>
                        </div>
                        <div class="row text-black">

                            <div class="col-xl-12">
                                <p class="float-end fw-bold">Total: $10.00
                                </p>
                            </div>
                            <hr style="border: 2px solid black;">
                        </div>
                        <div class="text-center" style="margin-top: 90px;">
                            <p>Thanks for your shopping at Brown Ted ! </p>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
