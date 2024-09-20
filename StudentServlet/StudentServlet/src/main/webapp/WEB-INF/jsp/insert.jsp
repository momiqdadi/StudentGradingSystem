<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Student</title>
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
        .form-container {
            background-color: #ffffff; /* White background */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        h2 {
            margin-bottom: 20px;
            text-align: center;
            color: #004d40; /* Dark teal for heading */
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #004d40; /* Dark teal for labels */
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #80cbc4; /* Light teal border */
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #00796b; /* Teal button background */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .form-group button:hover {
            background-color: #004d40; /* Dark teal on hover */
        }
    </style>

</head>
<body>
    <div class="form-container">
        <h2>Insert Student</h2>
        <form action="insert" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="math">Math:</label>
                <input type="number" id="math" name="math" required>
            </div>
            <div class="form-group">
                <label for="eng">English:</label>
                <input type="number" id="eng" name="eng" required>
            </div>
            <div class="form-group">
                <label for="ar">Arabic:</label>
                <input type="number" id="ar" name="ar" required>
            </div>
            <div class="form-group">
                <label for="sci">Science:</label>
                <input type="number" id="sci" name="sci" required>
            </div>
            <div class="form-group">
                <button type="submit">Insert Student</button>
            </div>
        </form>
    </div>
</body>
</html>
