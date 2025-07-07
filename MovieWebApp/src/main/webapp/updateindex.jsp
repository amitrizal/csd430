<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.DataBean" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Select Movie to Update</title>
    <style>
        select, option {
            color: black;
            background-color: white;
        }
    </style>
</head>
<body>
    <h2>Select a Movie to Update</h2>
    <form action="updateForm.jsp" method="get">
        <label for="movieId">Movie ID:</label>
        <select name="movieId" id="movieId" required>
            <%
                DataBean bean = new DataBean();
                List<Integer> ids = bean.getMovieIds();
                for (int id : ids) {
            %>
                <option value="<%= id %>" style="color:black; background-color:white;"><%= id %></option>
            <%
                }
            %>
        </select>
        <br><br>
        <input type="submit" value="Load Movie">
    </form>
</body>
</html>
