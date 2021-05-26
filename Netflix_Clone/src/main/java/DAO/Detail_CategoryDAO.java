package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect1;
import model.DetailMovie;

public class Detail_CategoryDAO {
	public ArrayList<DetailMovie> getDetailMoviebyCategory(int category_id) 
			throws SQLException {
			 Connection connection = DBConnect1.getConnecttion();
			 String sql = "SELECT * FROM detail_movie WHERE category_id = '" + category_id + "'";
			 PreparedStatement ps = connection.prepareCall(sql);
			 ResultSet rs = ps.executeQuery();
			 ArrayList<DetailMovie> list = new ArrayList<>();
			 while (rs.next()) {
				 DetailMovie detail_movie = new DetailMovie();
				 detail_movie.setCategory_id(rs.getInt("category_id"));
				 detail_movie.setMovie_id(rs.getInt("movie_id"));
				 
				 list.add(detail_movie);
			 }
			 return list;
			 } 

	public static void main(String[] args) throws SQLException  {
		Detail_CategoryDAO detail_category_dao = new Detail_CategoryDAO();
		

	}
}
