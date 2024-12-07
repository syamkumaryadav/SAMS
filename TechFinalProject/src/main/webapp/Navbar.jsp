<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="Bootstrap_links.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>My Website Navigation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .navbar {
            overflow: hidden;
            background-color: yellow;
        }
        .navbar a {
            float: left;
            display: block;
            flex: 1;
            color: blue;
            text-align: center;
            padding: 7px 7px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: yellow;
            color: black;
        }
         footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 0 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        
        
        
            </style>
</head>
<body>
	<img src="images/head.jpg" width="100%">
    <div class="navbar">
        <a href="Home.jsp">HOME</a>
        <a href="./achievementsPageServlet">ACHIEVEMENTS</a>
        <a href="Contact.jsp">CONTACT</a>
        <a href="StudentTestimonials.jsp">TESTIMONIALS</a> 
        <a href="admin.jsp">@</a>      
    </div>
    <br>
     <center><h3 style="font-family: Cooper Black; font-size: 40px;">Achievements Report</h3></center>	
    	 
</body>
</html>