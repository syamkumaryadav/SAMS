package com.syam.admin;

import java.io.IOException; 
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/adminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		System.out.println("id:::"+id);
		System.out.println("password:::"+password);
		PrintWriter out=response.getWriter();
		
		Statement stmt=null;		
		Connection conn=null;
		ResultSet rs=null;
		 try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
			 conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","gokada","syam");
			 stmt=conn.createStatement();
			 rs=stmt.executeQuery("select password,id from admin where id='"+id+"'");
			if(password.equals(password) && (id.equals(id))) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("StudentsAchievementsForm.jsp");
	             dispatcher.include(request, response);
				} else {
			             response.getWriter().println("Invalid username / password.");
			             //out.println("Invalid username / password.");
			         	}
		 }catch(Exception e) {
				System.out.print(e);
				 out.println("Internal server error!");
			}
		 finally {
	            try {
	                if (stmt != null) stmt.close();
	                if (rs != null) rs.close();
	                if (conn != null) conn.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
		}
	}
	}


