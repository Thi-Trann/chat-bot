<%-- 
    Document   : resetpw
    Created on : Jun 9, 2022, 12:07:22 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>reset password</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/login/resetpass.do">
            PassWord<br>
            <input type="password" name="pw" /><br>
            Verify Password <br>
            <input type="password" name="vpw" />    <br>
            <input type ="hidden" name="id" value="${id}"<br>
           <div style="text-align: center;" >${messpassd}</div><br>
            <input type ="submit" value="Reset password">
        </form>

    </body>
</html>
