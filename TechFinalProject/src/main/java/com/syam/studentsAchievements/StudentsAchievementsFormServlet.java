package com.syam.studentsAchievements;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.nio.file.*;

@WebServlet("/StudentsAchievementsServlet")
@MultipartConfig
public class StudentsAchievementsFormServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name1");
        String registration = request.getParameter("registration");
        String branch = request.getParameter("branch");
        String achievementType = request.getParameter("achievementType");
        String achievements = request.getParameter("achievements");
        String prize = request.getParameter("prize");
        String event = request.getParameter("event");
        String academicYear = request.getParameter("academic");
        String date = request.getParameter("date");
        Part filePart = request.getPart("imagePrv");

        String imagePath = null;
        String imagePath1=null;

        if (filePart != null) {
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            imagePath = "D:\\uploadImages\\" + fileName;
            imagePath1="\\images\\"+fileName;
            // Ensure the directory exists
            Files.createDirectories(Paths.get("D:\\uploadImages\\"));
           // Files.createDirectories(Paths.get("E:\\ADJ\\Syam_Project\\src\\main\\webapp\\images\\"));

            try (InputStream inputStream = filePart.getInputStream()) {
                Files.copy(inputStream, Paths.get(imagePath), StandardCopyOption.REPLACE_EXISTING);
                //Files.copy(inputStream, Paths.get(imagePath1), StandardCopyOption.REPLACE_EXISTING);
                System.out.println("File saved at: " + imagePath);
            } catch (IOException e) {
                e.printStackTrace();
                response.getWriter().println("File saving failed: " + e.getMessage());
                return;
            }
        }
        
        Path sourceDirectory = Paths.get("D:\\uploadImages");
        Path targetDirectory = Paths.get("E:\\ADJ\\Syam_Project\\src\\main\\webapp\\images");

        try {
            Files.walk(sourceDirectory).forEach(sourcePath -> {
                try {
                    Path targetPath = targetDirectory.resolve(sourceDirectory.relativize(sourcePath));
                    Files.copy(sourcePath, targetPath, StandardCopyOption.REPLACE_EXISTING);
                } catch (IOException e) {
                   // System.err.println("Failed to copy " + sourcePath + " to " + targetPath + ": " + e.getMessage());
                }
            });
            System.out.println("Files copied successfully.");
        } catch (IOException e) {
            System.err.println("Error walking the source directory: " + e.getMessage());
        }

        // Print statements to debug
        String dbURL = "jdbc:oracle:thin:@localhost:1521:orcl";
        String dbUser = "gokada";
        String dbPass = "syam";

        String sql = "INSERT INTO achievements (name, registration, branch, achievement_type, achievements, prize, event, imagePath, academic_year, achievement_date) values (?, ?, ?, ?, ?, ?, ?, ?, ?, TO_DATE(?, 'YYYY-MM-DD'))";

        try (Connection conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
             PreparedStatement statement = conn.prepareStatement(sql)) {

            statement.setString(1, name);
            statement.setString(2, registration);
            statement.setString(3, branch);
            statement.setString(4, achievementType);
            statement.setString(5, achievements);
            statement.setString(6, prize);
            statement.setString(7, event);
            statement.setString(8, imagePath1);
            statement.setString(9, academicYear);
            statement.setString(10, date);

            int row = statement.executeUpdate();
            if (row > 0) {
                response.getWriter().println("Achievement was inserted successfully.");
            } else {
                response.getWriter().println("Error occurred while inserting achievement.");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            response.getWriter().println("Database error occurred: " + ex.getMessage());
        }
    }
}
