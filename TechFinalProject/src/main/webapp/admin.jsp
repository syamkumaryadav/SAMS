<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Bootstrap_links.jsp" %>
<%@ include file="Navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Page</title>
</head>
<body>
<center>
<pre>




</pre>

<h3>Admin Login</h3>
    <form action="./adminServlet" method="post">
        <table>
            <tr>
                <td><label for="id">Id :</label></td>
                <td><input type="text" name="id" id="id" required/></td>                
            </tr>
            <tr>
                <td><label for="password">Password :</label></td>
                <td><input type="password" id="password" name="password" required></td>
            </tr>
        </table>
        <pre>
        
                    <input type="submit" class="btn btn-outline-success" value="Submit">
        </pre>
    </form>
</center>
</body>
</html>
