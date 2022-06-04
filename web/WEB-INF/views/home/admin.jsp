<%-- 
    Document   : admin
    Created on : Jun 3, 2022, 10:15:22 AM
    Author     : quckh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="${root}/css/admin.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <!-- content -->


        <div class="container-fluid">
            <div class="row content">
                <div class="col-sm-3 sidenav">
                    <h4 style="font-weight: bold; font-size: 20px;">Welcome ${role} to Brown Ted !</h4>
                    <ul class="nav nav-pills nav-stacked" style="display: block;">
                        <li class="ad_button"><a href="#tab1" >Manage Products</a></li>
                        <li class="ad_button"><a href="#tab2">Manage Employees</a></li>
                        <li class="ad_button"><a href="#tab3">Manage Customers</a></li>
                        <li class="ad_button"><a href="#tab4">Manage Orders</a></li>
                    </ul><br>
                </div>

                <div class="col-sm-9">
                    <div class="tabs">
                        <div id="tab1"> 
                            Manage Products 
                        </div>
                        <div id="tab2"> 
                            Manage Employees
                        </div>
                        <div id="tab3"> 
                            Manage Customers
                        </div>
                        <div id="tab4"> 
                            Manage Orders 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="${root}/js/admin.js" type="text/javascript"></script>

    </body>
</html>




