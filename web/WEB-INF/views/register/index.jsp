<%-- 
    Document   : register
    Created on : May 23, 2022, 9:01:49 PM
    Author     : quckh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="${root}/css/register.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/register.css" rel="stylesheet" type="text/css"/>
        <title>Register</title>
    </head>
    <body>
        <form>
            <div class="register_form">
                <div class="register_header">
                    Register
                </div>
                Name: 
                <input style="margin-left: 66px;" type="text" name="lastName" placeholder="Enter last name"/><br/><br/>
                User name:
                <input style="margin-left: 35px;" type="text" name="firstName" placeholder="Enter user name"/><br/><br/>
                Password:
                <input style="margin-left: 41px;" type="password" name="password" placeholder="Enter your password"/><br/><br/>
                Phone number:
                <input style="margin-left: 12px;" type="number" name="phoneNumber" placeholder="Enter phone number"/><br/><br/>
                Email:
                <input style="margin-left: 68px;" type="text" name="email" placeholder="Enter your email"/><br/><br/>
                Gender:
                <select style="margin-left: 57px;">
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
                <br/>
                <br/>
                <button style=" margin-left: 270px;" class="register_button" type="submit"><span>Register</span></button><br/>
            </div>
        </form>
    </body>
</html>
