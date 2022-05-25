<%-- 
    Document   : index
    Created on : May 23, 2022, 11:42:52 PM
    Author     : quckh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img src="${root}/images/PNG home page/event1.png" alt="Image" style="padding: 15px;">
            <div class="carousel-caption">
                <h3>Summer sale $</h3>
                <p>Teddy will save your money !</p>
            </div>      
        </div>
        <div class="item">
            <img src="${root}/images/PNG home page/event1.png" alt="Image" style="padding: 15px;">
            <div class="carousel-caption">
                <h3></h3>
                <p></p>
            </div>      
        </div>
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div class="container text-center">    
    <br>
    <div class="row">
        <div class="col-sm-4">
            <img src="${root}/images/PNG home page/topic1.png" class="img-responsive" style="width:100%" alt="Image">
        </div>
        <div class="col-sm-4"> 
            <img src="${root}/images/PNG home page/topic2.png" class="img-responsive" style="width:100%" alt="Image">
        </div>
        <div class="col-sm-4"> 
            <img src="${root}/images/PNG home page/topic3.png" class="img-responsive" style="width:100%" alt="Image">
        </div>
    </div>
</div><br/>
