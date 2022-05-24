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
                Last name: 
                <input style="margin-left: 39px;" type="text" name="lastName" placeholder="Enter last name"/>
                First name:
                <input type="text" name="firstName" placeholder="Enter first name"/><br/><br/>
                Phone number:
                <input style="margin-left: 5px;" type="number" name="phoneNumber" placeholder="Enter phone number"/><br/><br/>
                Email:
                <input style="margin-left: 71px;" type="text" name="email" placeholder="Enter your email"/><br/><br/>
                Password:
                <input style="margin-left: 43px;" type="password" name="password" placeholder="Enter your password"/><br/><br/>
                Day of birth: 
                <input style="margin-left: 25px;" type="number" name="day" placeholder="Day"/>
                <input type="number" name="month" placeholder="Month"/>
                <input type="number" name="year" placeholder="Year"/><br/><br/>
                Gender:
                <select style="margin-left: 57px;">
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
                <br/>
                <br/>
                <button class="register_button" type="submit"><a href="#">Register</a></button><br/>
            </div>
        </form>
    </body>
</html>
