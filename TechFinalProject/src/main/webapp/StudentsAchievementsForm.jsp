<%@ include file="Bootstrap_links.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students Achievements Page</title>
</head>
<body>
    <img src="images/head.jpg" width="100%">
    <h5 class="mb-0 text-center text-black" style="font-family: magneto; font-size: 45px; background-color: yellow;">Students Achievements Page</h5>
    <form action="StudentsAchievementsServlet" method="post" enctype="multipart/form-data" style="max-width: 500px; margin: 0 auto;">
        <div class="form-group">
            <label style="font-weight: bold;">Name</label>
            <input type="text" class="form-control" name="name1" placeholder="Enter Name" style="margin-bottom: 10px;">
        </div>
        <div class="form-group">
            <label style="font-weight: bold;">Regd.No</label>
            <input type="text" class="form-control" name="registration" placeholder="Registration" style="margin-bottom: 10px;">
        </div>
        <div class="form-group">
            <label style="font-weight: bold;">Branch:</label>
            <select class="form-control" name="branch" style="margin-bottom: 10px;">
                <option value="#">--Branch--</option>
                <option value="AIML">AIML</option>
                <option value="CB&DS">CB&DS</option>
                <option value="CSE">CSE</option>
                <option value="CIVIL">CIVIL</option>
                <option value="ECE">ECE</option>
                <option value="EEE">EEE</option>
                <option value="EIE">EIE</option>
                <option value="IT">IT</option>
                <option value="MECH">MECH</option>
            </select>
        </div>
        <div class="form-group">
            <label style="font-weight: bold;">Type of Achievement:</label>
            <select class="form-control" name="achievementType" style="margin-bottom: 10px;">
                <option value="#">--Achievement--</option>
                <option value="Sports">Sports</option>
                <option value="Technical">Technical</option>
                <option value="Cultural">Cultural</option>
                <option value="Academics">Academics</option>
                <option value="Certifications">Certifications</option>
                <option value="NSS">NSS</option>
                <option value="NCC">NCC</option>
                <option value="Literary">Literary</option>
                <option value="Other">Other</option>
            </select>
        </div>
        <div class="form-group">
            <label style="font-weight: bold;">Achievements</label>
            <textarea class="form-control" name="achievements" placeholder="Example: Kabaddi in Sports or Technical Quiz in Technical ...etc." rows="4" style="margin-bottom: 10px;"></textarea>
        </div>
        <div class="form-group">
            <label style="font-weight: bold;">Prize</label>
            <select class="form-control" name="prize" style="margin-bottom: 10px;">
                <option value="#">--select--</option>
                <option value="FIRST">FIRST</option>
                <option value="SECOND">SECOND</option>
                <option value="THIRD">THIRD</option>
                <option value="FOURTH">FOURTH</option>
                <option value="FIFTH">FIFTH</option>
                <option value="Certification">Certification</option>
                <option value="Other">Other</option>
            </select>
        </div>
        <div class="form-group">
            <label style="font-weight: bold;">Event:</label>
            <input type="text" class="form-control" name="event" placeholder="Example: Conducting College name like VIGNANS UNIVERSITY." style="margin-bottom: 10px;">
        </div>
        <div class="form-group">
            <label style="font-weight: bold;">Academic year:</label>
            <select class="form-control" name="academic" style="margin-bottom: 10px;">
                <option value="#">select</option>
                <option value="2021-22">2021-22</option>
                <option value="2022-23">2022-23</option>
                <option value="2023-24">2023-24</option>
            </select>
        </div>
        <div class="form-group">
            <label style="font-weight: bold;">Image File:</label><br>
            <img style="height:100px;width:100px; border: 1px solid #ccc; margin-bottom: 10px; display: block;" />
            <input type="file" class="form-control" name="imagePrv" accept="image/*" style="margin-bottom: 10px;">
        </div>
        <div class="form-group">
            <label style="font-weight: bold;">Date:</label>
            <input type="date" class="form-control" name="date" style="margin-bottom: 10px;">
        </div>
        <input type="submit" class="btn btn-primary" value="submit">
    </form>
</body>
</html>
