<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Management</title>
   <style>
       body {
           font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
           background-color: #e0f7fa; /* Light cyan background */
           display: flex;
           justify-content: center;
           align-items: center;
           height: 100vh;
           margin: 0;
       }
       .container {
           background-color: #ffffff; /* White background */
           padding: 30px;
           border-radius: 15px; /* Rounded corners */
           box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1); /* Soft shadow */
           text-align: center;
           width: 320px; /* Slightly wider container */
       }
       h1 {
           margin-bottom: 25px;
           color: #004d40; /* Dark teal for the heading */
           font-size: 24px; /* Larger font size for the heading */
       }
       .container button {
           padding: 12px 20px;
           margin: 12px 0;
           background-color: #00796b; /* Teal button background */
           color: white;
           border: none;
           border-radius: 8px; /* More rounded corners */
           cursor: pointer;
           width: 100%;
           font-size: 16px;
           transition: background-color 0.3s ease, transform 0.3s ease;
       }
       .container button:hover {
           background-color: #004d40; /* Dark teal on hover */
           transform: scale(1.05); /* Slight zoom on hover */
       }
   </style>

</head>
<body>
    <div class="container">
        <h1>Student Management</h1>
        <!-- Insert Student Button -->
        <form action="insert_redirect" method="get">
            <button type="submit">Insert Student</button>
        </form>
        <!-- View Student Button -->
        <form action="view_redirect" method="get">
            <button type="submit">View Student</button>
        </form>
    </div>
</body>
</html>
