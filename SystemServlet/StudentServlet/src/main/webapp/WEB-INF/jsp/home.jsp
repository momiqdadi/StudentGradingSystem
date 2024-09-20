<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Grading System</title>
    <style>
        body {
            font-family: 'Helvetica Neue', sans-serif;
            background-color: #1e1e1e; /* Dark background */
            color: #f0f0f0; /* Light text */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: #2e2e2e; /* Dark grey container */
            padding: 50px;
            border-radius: 12px; /* Softer corner radius */
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3); /* Bolder shadow */
            text-align: center;
            width: 350px;
        }
        h1 {
            color: #f0f0f0;
            font-size: 26px;
            margin-bottom: 25px;
            letter-spacing: 1px;
        }
        form {
            margin: 20px 0;
        }
        button {
            background-color: #ff8c00; /* Bright orange for contrast */
            color: #ffffff;
            border: none;
            padding: 14px 20px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        button:hover {
            background-color: #e67700; /* Darker orange on hover */
            transform: scale(1.05); /* Slight lift effect */
        }
        button:active {
            background-color: #cc6e00; /* Even darker on click */
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
