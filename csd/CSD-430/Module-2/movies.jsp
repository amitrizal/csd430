<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Favorite Movies</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h1>Movies I’ve Enjoyed Watching</h1>
    <p>This page displays a list of my favorite movies using JSP Scriptlets and HTML.</p>

    <%
    // Array of movies with title, genre, and release year
    String[][] movies = {
        {"Inception", "Sci-Fi", "2010"},
        {"The Dark Knight", "Action", "2008"},
        {"Interstellar", "Sci-Fi", "2014"},
        {"Parasite", "Thriller", "2019"},
        {"The Godfather", "Crime", "1972"}
    };
    %>

    <table border="1">
        <thead>
            <tr>
                <th>Title</th>
                <th>Genre</th>
                <th>Release Year</th>
            </tr>
        </thead>
        <tbody>
        <%
        for (int i = 0; i < movies.length; i++) {
        %>
            <tr>
                <td><%= movies[i][0] %></td>
                <td><%= movies[i][1] %></td>
                <td><%= movies[i][2] %></td>
            </tr>
        <%
        }
        %>
        </tbody>
    </table>
</body>
</html>
