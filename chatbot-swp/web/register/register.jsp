<%-- 
    Document   : register
    Created on : May 23, 2022, 9:01:49 PM
    Author     : quckh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/register.css" rel="stylesheet" type="text/css"/>
        <title>Register</title>
    </head>
    <body>
        <div>
            <p class="shop_name">Gấu bông</p>
            <h1 class="phone_number">Contact number: 090910509</h1>
        </div>
        <form>
            <div class="register_form">
                Last name: 
                <input style="margin-left: 27px;" type="text" name="lastName" placeholder="Enter your last name"/>
                First name:
                <input type="text" name="firstName" placeholder="Enter your first name"/><br/><br/>
                Phone number:
                <input type="number" name="phoneNumber" placeholder="Enter your phone number"/><br/><br/>
                Email:
                <input style="margin-left: 55px;" type="text" name="email" placeholder="Enter your email"/><br/><br/>
                Password:
                <input style="margin-left: 32px;" type="password" name="password" placeholder="Enter your password"/><br/><br/>
                Day of birth: 
                <input style="margin-left: 15px;" type="number" name="day" placeholder="Day"/>
                <input type="number" name="month" placeholder="Month"/>
                <input type="number" name="year" placeholder="Year"/><br/><br/>
                Gender:
                <select style="margin-left: 45px;">
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
                <br/><br/>
                <button  style="margin-left: 180px;" type="submit"><a href="#">Register</a></button><br/>
            </div>
        </form>
    </body>
</html>
