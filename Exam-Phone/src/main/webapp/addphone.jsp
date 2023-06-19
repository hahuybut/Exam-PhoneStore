<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Phone</title>
    <style>
        h1 {
            margin-top: 20px;
            text-align: center;
        }

        form {
            width: 400px;
            margin: 0 auto;
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }

        input[type="text"],
        select,
        textarea {
            width: 100%;
            padding: 5px;
            margin-top: 5px;
        }

        input[type="submit"],
        input[type="reset"] {
            display: inline-block;
            margin-top: 10px;
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 4px;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<h1>Add Phone</h1>
<form action="PhoneServlet?command=ADD" method="POST">

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="brand">Brand:</label>
    <select id="brand" name="brand" required>
        <option value="">Select a brand</option>
        <option value="Apple">Apple</option>
        <option value="Samsung">Samsung</option>
        <option value="Nokia">Nokia</option>
        <option value="Other">Other</option>
    </select><br>

    <label for="price">Price:</label>
    <input type="number" id="price" name="price" step="0.01" required><br>

    <label for="description">Description:</label>
    <textarea id="description" name="description" required></textarea><br>

    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
</form>
</body>
</html>
