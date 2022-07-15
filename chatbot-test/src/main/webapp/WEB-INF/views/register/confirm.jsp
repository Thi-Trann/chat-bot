<%-- 
    Document   : confirm
    Created on : Jun 6, 2022, 7:57:14 PM
    Author     : SE151515 Cao Trong Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="${root}/css/confirm.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!--        header-->
        <div class="login_form">
           
            <div class="conf">
            <form action="${pageContext.request.contextPath}/register/confirm.do" method="post">
                <p class="con_header" >Verify Account</p>
                <br>
                <h6 class ="contit">Verification code </h6>
                <input type="hidden" name="id" value="${id}">
                <input type="hidden" name="name" value="${name}">
                <input type="hidden" name="address" value="${address}">
                <input type="hidden" name="phone" value="${phone}">
                <input type="hidden" name="email" value="${email}">
                <input type="hidden" name="gender" value="${gender}">
                <input type="hidden" name="uname" value="${uname}">
                <input type="hidden" name="pw" value="${pw}">
                <input type="hidden" name="role" value="${role}">
                <input type="hidden" name="vcode" value="${vcode}">
                <input class="userName" id="ab1" type="text" placeholder="Enter your code " name="inputcode"><br/> <br/> 
                ${codemess}
                <button  class="login_button" type="submit"><span>Confirm</span></button>
                
            </form>
        </div>
        </div>
              
</html>
<p >${mess}</p><br/>