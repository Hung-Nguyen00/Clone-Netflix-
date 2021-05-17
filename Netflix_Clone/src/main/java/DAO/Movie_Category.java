package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect1;
import model.ActorMovie;
import model.DetailMovie;

public class Movie_Category {

	public Movie_Category() {
		// TODO Auto-generated constructor stub
	}

	public ArrayList<DetailMovie> getListCategoryOfMovie(int movie_id, int menu_id) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT d.stt as stt, c.name_category as name_category "
				+ "FROM netflix.menu as m "
				+ "INNER JOIN netflix.category as c ON m.menu_id = c.menu_id  "
				+ "INNER JOIN netflix.detail_movie as d ON d.category_id = c.category_id "
				+ "where d.movie_id = '"+ movie_id+"' and m.menu_id = '"+ menu_id+"'";
		
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		
		ArrayList<DetailMovie> list = new ArrayList<>();
		while (rs.next()) {
			DetailMovie actor = new DetailMovie();
			actor.setStt(rs.getInt("stt"));
			actor.setcategory_name(rs.getString("name_category"));
			list.add(actor);
		}
		return list;
	}

	public int getMaxId() throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT stt FROM actor_movie ORDER BY stt DESC LIMIT 1";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		int i = 0;
//		 loop any row in database to get every Items and return a value
		while(rs.next()) {
			i = rs.getInt("stt");
		}
		return i;
		} catch (Exception e) {
		return 0;
		}
	}
	public boolean insert(DetailMovie c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "INSERT INTO detail_movie VALUE(?,?,?)";
		
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setInt(1, c.getStt());
		ps.setInt(2, c.getCategory_id());
		ps.setInt(3, c.getMovie_id());
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}
	
	public boolean delete(int stt) throws SQLException {
		try {
			Connection connection = DBConnect1.getConnecttion();
			String sql = "DELETE FROM detail_movie WHERE stt = '"+ stt +"'";
			PreparedStatement ps = connection.prepareCall(sql)	;
			int temp = ps.executeUpdate();
			return temp == 1;
			} catch (Exception e) {
			return false;
			}
		}
	
	public boolean deleteCateOfMovie(int movie_id) throws SQLException {
		try {
			Connection connection = DBConnect1.getConnecttion();
			String sql = "DELETE FROM detail_movie WHERE movie_id = '"+ movie_id +"'";
			PreparedStatement ps = connection.prepareCall(sql)	;
			int temp = ps.executeUpdate();
			return temp == 1;
			} catch (Exception e) {
			return false;
			}
		}	
	public static void main(String[] args) throws SQLException {
		Movie_Category dao = new Movie_Category();
		for (DetailMovie ds : dao.getListCategoryOfMovie(2, 2)) {
			System.out.println(ds.getcategory_name() + " - "  + " ");		
			}
	}
}
