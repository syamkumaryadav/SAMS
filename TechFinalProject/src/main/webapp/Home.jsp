<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Navbar.jsp" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Achievements Page</title>
<style>
	.syam{
		margin: 25px 50px 75px 100px;
	}
	
</style>
</head>
<body>
<div class="carousel slide" data-bs-theme="dark" data-bs-ride="carousel" id="banners">
        <div class="carousel-inner" >
            <div class="carousel-item active " data-bs-interval="1000">              
                <img src="images/banners5.jpg" height="320" class="w-100 d-block">
            </div>
            <div class="carousel-item" data-bs-interval="3000">                
                <img src="images/banners2.jpg" height="320" class="w-100 d-block">
            </div>
            <div class="carousel-item" data-bs-interval="2000">              
                <img src="images/banners3.jpg" height="320" class="w-100 d-block">
            </div>
            <div class="carousel-item " data-bs-interval="1000">               
                <img src="images/banners4.jpg" height="320" class="w-100 d-block">
            </div>
            <div class="carousel-item" data-bs-interval="3000">               
                <img src="images/banners1.jpg" height="320" class="w-100 d-block">
            </div>
            <div class="carousel-item" data-bs-interval="1000">             
                <img src="images/banners6.jpg" height="320" class="w-100 d-block">
            </div>
        </div>
        <button class="carousel-control-prev" data-bs-slide="prev" data-bs-target="#banners">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" data-bs-slide="next" data-bs-target="#banners">
            <span class="carousel-control-next-icon"></span>
        </button> 
        <div class="carousel-indicators">
            <button class="active" data-bs-slide-to="0" data-bs-target="#banners"></button>
            <button data-bs-slide-to="1" data-bs-target="#banners"></button>
            <button data-bs-slide-to="2" data-bs-target="#banners"></button>
            <button data-bs-slide-to="3" data-bs-target="#banners"></button>
            <button data-bs-slide-to="4" data-bs-target="#banners"></button>
            <button data-bs-slide-to="5" data-bs-target="#banners"></button>
           
        </div>
    </div>
    <br><br>
	<div class="syam">
	          <h2 style="font-family: Forte; font-size: 30px;">Student_Achievers</h2>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;These are the BECians who highlighted their Success through this Website by Showcasing their Talents.</p>
     </div>     
            
        
      
	
<%-- 	 <%@ include file="footer.jsp" %>
 --%></body>
</html>