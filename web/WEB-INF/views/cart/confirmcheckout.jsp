<%-- 
    Document   : confirmcheckout
    Created on : Jun 14, 2022, 3:29:55 PM
    Author     : Admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    
    <form action="bill.do">
    Name : ${name}<br>
    Phone: ${phone}<br>
    Email: ${email}<br>
    Address: ${address}<br>
    <br>
    Your cart   <a href="<c:url value="/cart/index.do"/>">change</a>    <br>
    
    
    <c:forEach var="item" items="${cart.items}" varStatus="loop">
    ${item.name}x${item.quantity}     ${item.cost}
    
    
    
    <br>
    </c:forEach>
    <br>
  Total:<fmt:formatNumber value="${cart.total}" pattern="$#,##0.00" />
    
  <button>Payment</button>
    
    
    </form>
    
    
    
   
</html>
