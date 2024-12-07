<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="Bootstrap_links.jsp" %>
<%@ include file="Navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bec Achievements Page</title>
<style>
    .table1 {
        width: 95%;
        border-collapse: collapse;
    }
    .table2 {
        width: 30%;
        border-collapse: collapse;
    }
    th, td {
        border: 1px solid black;
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    body {
        font-family: var(--bs-body-font-family);
        font-size: var(--bs-body-font-size);
        font-weight: var(--bs-body-font-weight);
        line-height: var(--bs-body-line-height);
        color: var(--bs-body-color);
        text-align: var(--bs-body-text-align);
        background-color: var(--bs-body-bg);
        -webkit-text-size-adjust: 100%;
        -webkit-tap-highlight-color: transparent;
    }
</style>
</head>
<body>
<form action="achievementsPageServlet" method="post" style="max-width: 300px; margin: 0 auto;">
    <div class="form-group">
        <label style="font-weight: bold;">Regd.No</label>
        <input type="text" class="form-control" name="registration" placeholder="Registration" style="margin-bottom: 10px;">
    </div>
    <div class="form-group">
        <label style="font-weight: bold;">Academic year:</label>
        <select class="form-control" name="academic" style="margin-bottom: 10px;">
            <option value="0">select</option>
            <option value="2021-22">2021-22</option>
            <option value="2022-23">2022-23</option>
            <option value="2023-24">2023-24</option>
        </select>
    </div>
    <div class="form-group">
        <label style="font-weight: bold;">Branch:</label>
        <select class="form-control" name="branch" style="margin-bottom: 10px;">
            <option value="0">--Branch--</option>
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
            <option value="0">--Achievement--</option>
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
    <br>
    <input type="submit" class="btn btn-primary" value="submit"><br><br><br><br><br>
</form>
 <!-- New table for counting achievements by prize -->
            <c:if test="${not empty achievementsList}">
                <br><br>
                 <center>
                                <table border="1" class="table2">
                    <tr>
                        <th>Prize</th>
                        <th>Count</th>
                    </tr>
                    <c:set var="firstPrizeCount" value="0" />
                    <c:set var="secondPrizeCount" value="0" />
                    <c:set var="thirdPrizeCount" value="0" />
                     <c:set var="forthPrizeCount" value="0" />
                      <c:set var="fifthPrizeCount" value="0" />
                       <c:set var="certPrizeCount" value="0" />
                    <c:set var="otherPrizeCount" value="0" />
                    <c:forEach var="achievement" items="${achievementsList}">
                        <c:choose>
                            <c:when test="${achievement.prize == 'FIRST'}">
                                <c:set var="firstPrizeCount" value="${firstPrizeCount + 1}" />
                            </c:when>
                            <c:when test="${achievement.prize == 'SECOND'}">
                                <c:set var="secondPrizeCount" value="${secondPrizeCount + 1}" />
                            </c:when>
                            <c:when test="${achievement.prize == 'THIRD'}">
                                <c:set var="thirdPrizeCount" value="${thirdPrizeCount + 1}" />
                            </c:when>
                            <c:when test="${achievement.prize == 'FOURTH'}">
                                <c:set var="forthPrizeCount" value="${forthPrizeCount + 1}" />
                            </c:when>
                             <c:when test="${achievement.prize == 'FIFTH'}">
                                <c:set var="fifthPrizeCount" value="${fifthPrizeCount + 1}" />
                            </c:when>
                             <c:when test="${achievement.prize == 'Certification'}">
                                <c:set var="certPrizeCount" value="${certPrizeCount + 1}" />
                            </c:when>
                            <c:otherwise>
                                <c:set var="otherPrizeCount" value="${otherPrizeCount + 1}" />
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <tr>
                        <td>First</td>
                        <td>${firstPrizeCount}</td>
                    </tr>
                    <tr>
                        <td>Second</td>
                        <td>${secondPrizeCount}</td>
                    </tr>
                    <tr>
                        <td>Third</td>
                        <td>${thirdPrizeCount}</td>
                    </tr>
                    <tr>
                        <td>Forth</td>
                        <td>${forthPrizeCount}</td>
                    </tr>
                    <tr>
                        <td>Fifth</td>
                        <td>${fifthPrizeCount}</td>
                    </tr>
                    <tr>
                        <td>Certifications</td>
                        <td>${certPrizeCount}</td>
                    </tr>
                    <tr>
                        <td>Other</td>
                        <td>${otherPrizeCount}</td>
                    </tr>
                </table>
                </center>
            </c:if>
            <br><br><br>
<c:if test="${imagesDisplay}">
    <div>
        <center>
            <c:if test="${not empty achievementsList}">
                <table border="1" class="table1">
                    <tr>
                        <th>SNo</th>
                        <th>Registration ID</th>
                        <th>Name</th>
                        <th>Branch</th>
                        <th>Achievement Type</th>
                        <th>Achievements</th>
                        <th>Prize</th>
                        <th>College Event</th>
                        <th>Academic Year</th>
                        <th>Event Date</th>
                        <th>Image</th>
                    </tr>
                    <c:forEach var="achievement" items="${achievementsList}" varStatus="status">
                        <tr>
                            <td>${status.index + 1}</td>
                            <td>${achievement.registrationId}</td>
                            <td>${achievement.name}</td>
                            <td>${achievement.branch}</td>
                            <td>${achievement.aType}</td>
                            <td>${achievement.achievements}</td>
                            <td>${achievement.prize}</td>
                            <td>${achievement.event}</td>
                            <td>${achievement.aYear}</td>
                            <td>${achievement.eventDate}</td>
                            <td>
                                <c:if test="${not empty achievement.imagePath}">
                                    <img src="${pageContext.request.contextPath}/${achievement.imagePath}" width="50" height="50"/>
                                </c:if>
                                <c:if test="${empty achievement.imagePath}">
                                    No Image
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </c:if>
            <c:if test="${empty achievementsList}">
                <p>No achievements found.</p>
            </c:if>

           
            <br><br>
        </center>
    </div>
</c:if>
</body>
</html>
