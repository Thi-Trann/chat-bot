<%-- 
    Document   : checkbill
    Created on : Jun 29, 2022, 12:16:35 AM
    Author     : SE151515 Cao Trong Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <link href="${root}/css/emp.css" rel="stylesheet" type="text/css"/>


        <script>
            $(document).ready(function () {
                $("#flip").click(function () {
                    $("#panel").slideToggle("slow");
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                $("#flip2").click(function () {
                    $("#panel2").slideToggle("slow");
                });
            });
        </script>
    </head>
    <body>
        <h1>Check bills</h1>
        <hr>
        <div>
            <h2>New</h2>
            <div>
                <button id="flip" class="btn2" >Show/Hide</button><br>
                <div id="panel">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th style="text-align: center;">No.</th>
                                <th style="text-align: center;">Order ID</th>
                                <th style="text-align: center;">Date</th>
                                <th style="text-align: center;">status</th>
                                <th style="text-align: center;">Customer id</th>
                                <th style="text-align: center;">Address</th>
                                <th style="text-align: center;">asd</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="orderheader" items="${ohnew}" varStatus="loop">
                                <tr>
                                    <c:set var = "a" scope = "session" value = "${orderheader.orderId}a"></c:set>
                                    <c:set var = "b" scope = "session" value = "${orderheader.orderId}b"></c:set>
                                    <td style="text-align: center;">${loop.count}</td>
                                    <td style="text-align: center;">${orderheader.orderId}</td>
                                    <td style="text-align: center;"><fmt:formatDate type = "date" 
                                                    dateStyle = "short" timeStyle = "short" value = "${orderheader.date}" /></td>


                                    <td style="text-align: center;">
                                        <select onchange="change()" name ="stt" id="abc">
                                            <option selected="selected">New</option>
                                            <option>Confirmed</option>
                                            <option>Cancel</option>
                                        </select>
                                    </td>




                                    <td style="text-align: center;">${orderheader.customerId}</td>
                                    <td style="text-align: center;">${orderheader.shipToAddress}</td>
                                    <td style="text-align: center;">
                                        
                                        <form action="${pageContext.request.contextPath}/emp/update.do" method="post">
                                            <input type="hidden" value="${orderheader.orderId}" name="id"/>
                                            <input type="hidden" id="b" name="stt" value=""/>
                                            <button class="manage_btn"><i class="bi bi-pencil"></i> Update</button>
                                        </form>
                                            
                                    </td>
                                </tr>
                            </c:forEach> 
                        <script>
                            function change(){
                                let temp = document.getElementById('a').value;
                                document.getElementById('b').value =temp;
                            }
                            
                        </script>
                        </tbody>
                    </table>
                </div>
            </div>




        </div>
        <hr>                              
        <div>
            <h2>confirmed</h2>
            <div>
                <button id="flip2" class="btn2" >Show/Hide</button><br>
                <div id="panel2">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th style="text-align: center;">No.</th>
                                <th style="text-align: center;">Order ID</th>
                                <th style="text-align: center;">Date</th>
                                <th style="text-align: center;">status</th>
                                <th style="text-align: center;">Customer id</th>
                                <th style="text-align: center;">Address</th>
                                <th style="text-align: center;">asd</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="orderheader" items="${ohnew}" varStatus="loop">
                           
                                <tr>
                         
                                    <td style="text-align: center;">${loop.count}</td>
                                    <td style="text-align: center;">${orderheader.orderId}</td>
                                    <td style="text-align: center;"><fmt:formatDate type = "date" 
                                                    dateStyle = "short" timeStyle = "short" value = "${orderheader.date}" /></td>

                                    <td style="text-align: center;"><select name ="stt">
                                            <option >New</option>
                                            <option selected="selected">Confirmed</option>
                                            <option>Cancel</option>
                                        </select>
                                    </td>
                                    
                                    
                                    <td style="text-align: center;">${orderheader.customerId}</td>
                                    <td style="text-align: center;">${orderheader.shipToAddress}</td>
                                    <td style="text-align: center;">
                                       <form action="${pageContext.request.contextPath}/admin/updateEmployee.do" method="post">
                                            <input type="hidden" value="${elist.id}" name="id"/>
                                            
                                            <button class="manage_btn"><i class="bi bi-pencil"></i> Update</button>
                                       </form>    
                                    </td>
                                   
                                </tr>
                            
                            </c:forEach> 
                        </tbody>
                    </table>
                </div>
            </div>




        </div>




    </body>
</html>
