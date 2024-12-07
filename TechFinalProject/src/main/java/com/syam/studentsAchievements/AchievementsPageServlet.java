package com.syam.studentsAchievements;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.syam.model.Achievement;


@WebServlet("/achievementsPageServlet")
public class AchievementsPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Existing code for handling POST request
		String registration = request.getParameter("registration");
		String branch = request.getParameter("branch");
		String achievementType = request.getParameter("achievementType");
		String academicYear = request.getParameter("academic");

		String dbURL = "jdbc:oracle:thin:@localhost:1521:orcl";
		String dbUser = "gokada";
		String dbPass = "syam";
		String condition=" and 1=1 ";
		if(!"".equals(registration)) {
			condition= " and registration= '"+registration+"'";
		}
		if (!"0".equals(branch)) {
		    condition = " and branch = '" + branch + "'";
		}
		if (!"0".equals(achievementType)) {
		    condition = " and achievement_type = '" + achievementType + "'";
		}
		if (!"0".equals(academicYear)) {
		    condition = " and academic_year = '" + academicYear + "'";
		}
		
		
		 String sql = "select * from achievements where 1=1 "+condition;
		System.out.println("sql:::::"+sql);

		List<Achievement> achievementsList = new ArrayList<>();
		  try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
		  PreparedStatement statement = conn.prepareStatement(sql))
		  { 
			  ResultSet resultSet =statement.executeQuery();
			  while (resultSet.next()) {
	                
	                Achievement achievement = new Achievement();
	                achievement.setRegistrationId(resultSet.getString("REGISTRATION"));
	                achievement.setName(resultSet.getString("NAME"));
	                achievement.setBranch(resultSet.getString("BRANCH"));
	                achievement.setaType(resultSet.getString("ACHIEVEMENT_TYPE"));
	                achievement.setAchievements(resultSet.getString("ACHIEVEMENTS"));
	                achievement.setPrize(resultSet.getString("PRIZE"));
	                achievement.setEvent(resultSet.getString("EVENT"));
	                achievement.setaYear(resultSet.getString("ACADEMIC_YEAR"));
	                achievement.setEventDate(resultSet.getDate("ACHIEVEMENT_DATE"));
	                achievement.setImagePath(resultSet.getString("IMAGEPATH"));
	                achievementsList.add(achievement);
	               }
			  request.setAttribute("achievementsList", achievementsList);
			  request.setAttribute("imagesDisplay", true);
              request.getRequestDispatcher("AchievementsPage.jsp").forward(request, response);
           
		  } catch (SQLException e) { // TODO Auto-generated catch block
		  e.printStackTrace(); 
		  }
		 
	
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("imagesDisplay", false);
		request.setAttribute("achievementsList", "");
		request.getRequestDispatcher("AchievementsPage.jsp").forward(request, response);
	}

	

	
	}
