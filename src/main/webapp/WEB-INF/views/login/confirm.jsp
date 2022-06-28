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
            <form action="${pageContext.request.contextPath}/login/confirm.do" method="post">
                <p class="con_header" >Verify Account</p>
                <br>
                <h6 class ="contit">verifycation code </h6>
                <input type="hidden" name="id" value="${id}">
                <input type="hidden" name="vcode" value="${vcode}">
                
             
                <input class="userName" id="ab1" type="text" placeholder="Enter your code " name="inputcode"><br/> <br/> 
              
                <button style="margin-left: 220px;" class="login_button" type="submit"><span>Confirm</span></button>    <br>
                 <div style="text-align: center;" > ${codemess}</div>
            </form>
        </div>
        </div>
              
</html>
<p style="margin-left: 250px;">${mess}</p><br/>