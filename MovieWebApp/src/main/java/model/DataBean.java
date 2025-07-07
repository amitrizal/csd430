package model;

import java.sql.*;
import java.util.*;

public class DataBean {
    private String dbUrl = "jdbc:mysql://localhost:3306/csd430"; 
    private String dbUser = "root";
    private String dbPass = "pass";    

    // Method to connect to the database
    public Connection connect() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    // Method to retrieve all movie IDs
    public List<Integer> getMovieIds() {
        List<Integer> ids = new ArrayList<>();
        try {
            Connection conn = connect();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT id FROM amit_movies_data");
            while (rs.next()) {
                ids.add(rs.getInt("id"));
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ids;
    }

    // Method to get a movie's details by ID
    public Map<String, String> getMovieById(int movieId) {
        Map<String, String> movie = new HashMap<>();
        try {
            Connection conn = connect();
            String query = "SELECT title, genre, director, year, rating FROM amit_movies_data WHERE id = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, movieId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                movie.put("title", rs.getString("title"));
                movie.put("genre", rs.getString("genre"));
                movie.put("director", rs.getString("director"));
                movie.put("year", String.valueOf(rs.getInt("year")));
                movie.put("rating", String.valueOf(rs.getFloat("rating")));
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movie;
    }

    // Method to update a movie record
    public boolean updateMovie(int id, String title, String genre, String director, int year, float rating) {
        boolean success = false;
        try {
            Connection conn = connect();
            String query = "UPDATE amit_movies_data SET title = ?, genre = ?, director = ?, year = ?, rating = ? WHERE id = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, title);
            pstmt.setString(2, genre);
            pstmt.setString(3, director);
            pstmt.setInt(4, year);
            pstmt.setFloat(5, rating);
            pstmt.setInt(6, id);

            int result = pstmt.executeUpdate();
            success = (result > 0);
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }
}
