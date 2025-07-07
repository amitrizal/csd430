<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.DataBean" %>
<%
    int id = Integer.parseInt(request.getParameter("movieId"));
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    String director = request.getParameter("director");
    int year = Integer.parseInt(request.getParameter("year"));
    float rating = Float.parseFloat(request.getParameter("rating"));

    DataBean bean = new DataBean();
    boolean success = bean.updateMovie(id, title, genre, director, year, rating);
%>
<html>
<head>
    <title>Update Result</title>
</head>
<body>
    <h2>
        <%
            if (success) {
                out.println("Movie updated successfully!");
            } else {
                out.println("Failed to update the movie.");
            }
        %>
    </h2>
    <a href="updateindex.jsp">Go back to selection</a>
</body>
</html>
