<%@ page import="com.csd430.beans.DataBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JavaBean Display</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            text-align: center;
        }

        h2 {
            color: #333;
            margin-top: 40px;
        }

        table {
            margin: 30px auto;
            border-collapse: collapse;
            width: 60%;
            max-width: 600px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            background-color: #fff;
        }

        th {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            font-size: 16px;
        }

        td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e6ffe6;
        }
    </style>
</head>
<body>

<%
    DataBean user = new DataBean();
    user.setName("Amit Rizal");
    user.setCity("Reynoldsburg");
    user.setState("Ohio");
    user.setZipCode(43068);
    user.setEmail("amitrizal@hotmail.com");
%>

<h2>User Information</h2>

<table>
    <tr><th>Field</th><th>Value</th></tr>
    <tr><td>Name</td><td><%= user.getName() %></td></tr>
    <tr><td>City</td><td><%= user.getCity() %></td></tr>
    <tr><td>State</td><td><%= user.getState() %></td></tr>
    <tr><td>Zip Code</td><td><%= user.getZipCode() %></td></tr>
    <tr><td>Email</td><td><%= user.getEmail() %></td></tr>
</table>

</body>
</html>
