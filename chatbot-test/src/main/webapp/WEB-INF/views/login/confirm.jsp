<%-- 
    Document   : comfirm
    Created on : Jul 15, 2022, 11:23:45 AM
    Author     : nldta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="${root}/css/confirm.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-image: url(/chatbot-test/images/layout.jpg); background-size: cover;">
<!--                header-->
        <div class="login_form">
           
            <div class="conf">
            <form action="${pageContext.request.contextPath}/login/confirm.do" method="post">
                <p class="con_header" >Verify Account</p>
                <br>
                <h6 class ="contit">verifycation code </h6>
                <input type="hidden" name="id" value="${id}">
                <input type="hidden" name="vcode" value="${vcode}">
                
             
                <input class="userName" id="ab1" type="text" placeholder="Enter your code " name="inputcode"><br/> <br/> 
              
                <button  class="login_button" type="submit"><span>Confirm</span></button>    <br>
                 <div  > ${codemess}</div>
            </form>
        </div>
        </div>
              
</html>
<p >${mess}</p><br/>
