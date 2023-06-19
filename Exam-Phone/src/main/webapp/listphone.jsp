<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Phone List</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        a {
            display: inline-block;
            margin-bottom: 10px;
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 4px;
        }

        a:hover {
            background-color: #45a049;
        }

        h1 {
            margin-top: 20px;
        }
    </style>
</head>
<body>
<a href="addphone.jsp">ADD Phone</a>
<h1>Phone List</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Brand</th>
        <th>Price</th>
        <th>Description</th>
    </tr>
    <c:forEach var="phone" items="${PHONE_LIST}">
        <tr>
            <td>${phone.id}</td>
            <td>${phone.name}</td>
            <td>${phone.brand}</td>
            <td>${phone.price}</td>
            <td>${phone.description}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
