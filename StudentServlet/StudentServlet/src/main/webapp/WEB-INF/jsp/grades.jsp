<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="models.Student"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Grades</title>
     <style>
           body {
               font-family: Arial, sans-serif;
               background-color: #e0f7fa; /* Light cyan background */
               display: flex;
               justify-content: center;
               align-items: center;
               height: 100vh;
               margin: 0;
           }
           .grades-container {
               background-color: #ffffff; /* White background */
               padding: 20px;
               border-radius: 10px;
               box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
               width: 400px;
           }
           h2 {
               text-align: center;
               margin-bottom: 20px;
               color: #004d40; /* Dark teal */
           }
           table {
               width: 100%;
               border-collapse: collapse;
               margin-bottom: 20px;
           }
           table, th, td {
               border: 1px solid #b2dfdb; /* Light teal border */
           }
           th {
               background-color: #00796b; /* Teal background for header */
               color: white;
           }
           td {
               background-color: #e0f2f1; /* Very light teal for table cells */
               color: #004d40; /* Dark teal for text */
           }
           .gpa-row td {
               background-color: #b2dfdb; /* Light teal background for GPA row */
               color: #004d40; /* Dark teal text */
           }
           .calculate-button {
               display: block;
               width: 100%;
               padding: 10px;
               background-color: #00796b; /* Teal background for button */
               color: white;
               border: none;
               border-radius: 5px;
               cursor: pointer;
               font-size: 16px;
               transition: background-color 0.3s;
           }
           .calculate-button:hover {
               background-color: #004d40; /* Dark teal on hover */
           }
       </style>
</head>
<body>
    <div class="grades-container">
        <h2>Student Grades</h2>
        <%
            Object studentObj = request.getAttribute("student");
            if (studentObj != null && studentObj instanceof Student) {
                Student student = (Student) studentObj;
        %>
        <table>
            <tr>
                <th>Subject</th>
                <th>Grade</th>
            </tr>
            <tr>
                <td>Name</td>
                <td><%= student.getName() %></td>
            </tr>
            <tr>
                <td>Math</td>
                <td><%= student.getMath() %></td>
            </tr>
            <tr>
                <td>English</td>
                <td><%= student.getEnglish() %></td>
            </tr>
            <tr>
                <td>Arabic</td>
                <td><%= student.getArabic() %></td>
            </tr>
            <tr>
                <td>Science</td>
                <td><%= student.getScience() %></td>
            </tr>
            <tr class="gpa-row">
                <td>GPA</td>
                <td><%= student.getGpa() %></td>
            </tr>
        </table>
        <% } %>
    </div>
</body>
</html>