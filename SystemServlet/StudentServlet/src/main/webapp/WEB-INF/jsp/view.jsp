<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Student</title>
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
        .form-container {
            background-color: #2e2e2e; /* Dark grey background */
            padding: 40px;
            border-radius: 12px; /* Softer corner radius */
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.3); /* Strong shadow */
            width: 400px;
        }
        h2 {
            color: #f0f0f0;
            font-size: 26px;
            text-align: center;
            margin-bottom: 25px;
            letter-spacing: 1px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            color: #ff8c00; /* Bright orange for labels */
            margin-bottom: 8px;
            font-weight: bold;
        }
        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ff8c00; /* Bright orange border */
            border-radius: 8px;
            background-color: #3e3e3e; /* Darker input background */
            color: #f0f0f0; /* Light text in input */
        }
        .form-group button {
            width: 100%;
            padding: 14px;
            background-color: #ff8c00; /* Bright orange button */
            color: #ffffff;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .form-group button:hover {
            background-color: #e67700; /* Darker orange on hover */
            transform: scale(1.05); /* Slight lift effect */
        }
        .form-group button:active {
            background-color: #cc6e00; /* Even darker on click */
        }
    </style>

</head>
<body>
    <div class="form-container">
        <h2>Insert Student</h2>
        <form action="view" method="get">
            <div class="form-group">
                <label for="id">Student ID:</label>
                <input type="number" id="id" name="id" required>
            <div class="form-group">
                <button type="submit">Insert Student</button>
            </div>
        </form>
    </div>
</body>
</html>
