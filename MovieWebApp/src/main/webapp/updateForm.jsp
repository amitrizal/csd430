<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.DataBean" %>
<%@ page import="java.util.*" %>
<%
    String movieIdStr = request.getParameter("movieId");
    int movieId = Integer.parseInt(movieIdStr);

    DataBean bean = new DataBean();
    Map<String, String> movie = bean.getMovieById(movieId);
%>
<html>
<head>
    <title>Update Movie</title>
</head>
<body>
    <h2>Update Movie Details</h2>
    <form action="updateProcess.jsp" method="post">
        <input type="hidden" name="movieId" value="<%= movieId %>" />

        Title: <input type="text" name="title" value="<%= movie.get("title") %>" required /><br><br>
        Genre: <input type="text" name="genre" value="<%= movie.get("genre") %>" required /><br><br>
        Director: <input type="text" name="director" value="<%= movie.get("director") %>" required /><br><br>
        Year: <input type="number" name="year" value="<%= movie.get("year") %>" required /><br><br>
        Rating: <input type="number" step="0.1" name="rating" value="<%= movie.get("rating") %>" required /><br><br>

        <input type="submit" value="Update Movie" />
    </form>
</body>
</html>
