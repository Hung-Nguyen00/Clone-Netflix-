package DAO;
import connect.DBConnect1;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;


import model.SeasonMovie;

public class SeasonDAO {
	
	public ArrayList<SeasonMovie> getListSeasonMovie(int movie_id) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT season_id, DATE_FORMAT(last_update, '%d-%m-%Y') last_update FROM season_movie WHERE movie_id ='"+ movie_id+ "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<SeasonMovie> list = new ArrayList<>();
		while (rs.next()) {
			SeasonMovie seasonMovie = new SeasonMovie();
			seasonMovie.setSeasonId(rs.getByte("season_id"));
			seasonMovie.setLast_update(rs.getString("last_update"));
			list.add(seasonMovie);
		}
		return list;
	}
	
	public boolean checkMovieHasSeason(int movie_id) throws SQLException{
		Connection connection = DBConnect1.getConnecttion();
		String sql = "Select * from movie as sm where sm.movie_id in"
				+ "(Select movie_id from season_movie as sm1 where sm.movie_id = sm1.movie_id) "
				+ "and sm.movie_id = '"+ movie_id +"'";
		PreparedStatement ps;
		try {
			 ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				connection.close();
				return true;
			}	
		} catch (Exception e) {
		}
		return false;
	}
//	public ArrayList<SeasonMovie> getListSeasonMovieOfMovie(int movie_id) throws SQLException {
//		Connection connection = DBConnect1.getConnecttion();
//		String sql = "SELECT * FROM SeasonMovie as a "
//				+ "WHERE a.SeasonMovie_id NOT IN "
//				+ "(SELECT am.SeasonMovie_id FROM SeasonMovie_movie as am where am.movie_id = '"+ movie_id +"')";//SELECT * FROM netflix.category WHERE menu_id = '"+ menu_id +"';
//		PreparedStatement ps = connection.prepareCall(sql);
//		ResultSet rs = ps.executeQuery();
//		ArrayList<SeasonMovie> list = new ArrayList<>();
//		while (rs.next()) {
//			SeasonMovie SeasonMovie = new SeasonMovie();
//			SeasonMovie.setSeasonMovieId(rs.getInt("SeasonMovie_id"));
//			SeasonMovie.setFirstName(rs.getString("first_name"));
//			SeasonMovie.setLastName(rs.getString("last_name"));
//			SeasonMovie.setDirector(rs.getByte("director"));
//			SeasonMovie.setLastUpdate(rs.getDate("last_update"));
//			list.add(SeasonMovie);
//		}
//		return list;
//	}

//	public SeasonMovie getSeasonMovie(int SeasonMovie_id) throws SQLException {
//		Connection connection = DBConnect1.getConnecttion();
//		String sql = "SELECT * FROM SeasonMovie WHERE SeasonMovie_id = '" + SeasonMovie_id + "'";
//		PreparedStatement ps = connection.prepareCall(sql);
//		ResultSet rs = ps.executeQuery();
//		SeasonMovie SeasonMovie = new SeasonMovie();
//		while (rs.next()) {
//			SeasonMovie.setFirstName(rs.getString("first_name"));
//			SeasonMovie.setLastName(rs.getString("last_name"));
//			SeasonMovie.setDirector(rs.getByte("director"));
//			SeasonMovie.setSeasonMovieId(rs.getInt("SeasonMovie_id"));
//		}
//		return SeasonMovie;
//	}

	public boolean insert(SeasonMovie c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "INSERT INTO season_movie VALUE(?,?,?)";
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		
		PreparedStatement ps = connection.prepareCall(sql);
		
		ps.setInt(1, c.getSeasonId());
		ps.setDate(2, sqlDate);
		ps.setInt(3, c.getMovie_id());
		
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}
	
	public int getMaxIdMovie( int movie_id) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT COUNT(season_id) AS stt FROM season_movie WHERE movie_id = '"+ movie_id +"'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		int i = 0;
		while(rs.next()) {
			i = rs.getInt("stt");
			System.out.println(i);
		}
		
		return i;
		} catch (Exception e) {
		return 0;
		}
	}
	public int getMaxId() throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT season_id AS stt FROM season_movie order by season_id DESC Limit 1";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		int i = 0;
		while(rs.next()) {
			i = rs.getInt("stt");
		}
		
		return i;
		} catch (Exception e) {
		return 0;
		}
	}
	
	public boolean checkSeasonHasSeries(byte season_id) throws SQLException{
		Connection connection = DBConnect1.getConnecttion();
		String sql = "Select * from netflix.season_movie as sm where sm.season_id in"
				+ "(Select season_id from netflix.series_movie as sm1 where sm.season_id = sm1.season_id)"
				+ "and sm.season_id = '"+ season_id +"'";
		PreparedStatement ps;
		try {
			 ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				connection.close();
				return true;
			}	
		} catch (Exception e) {
		}
		return false;
	}
	
//	public boolean update(SeasonMovie c) throws SQLException {
//		try {
//		Connection connection = DBConnect1.getConnecttion();
//		String sql = "UPDATE season_movie SET last_update =? WHERE SeasonMovie_id = ?";
//		PreparedStatement ps = connection.prepareCall(sql);
//		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
//		ps.setString(1, c.getFirstName());
//		ps.setString(2, c.getLastName());
//		ps.setByte(3, c.getDirector());
//		ps.setDate(4, sqlDate);
//		ps.setInt(5, c.getSeasonMovieId());
//		int temp = ps.executeUpdate();
//		return temp == 1;
//		} catch (Exception e) {
//		return false;
//		}
//	}		
////	
	public boolean delete(int SeasonMovie_id) throws SQLException {
	try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "DELETE FROM season_movie WHERE season_id = '"+ SeasonMovie_id +"'";
		PreparedStatement ps = connection.prepareCall(sql)	;
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
	
	
	public static void main(String[] args) throws SQLException {
			SeasonDAO dao = new SeasonDAO();
//			for(int i=6; i<10; i++ ) {
//				System.out.println(dao.insert(new SeasonMovie(i, "John", "Nguyen", Byte.parseByte("1")))); 
//			}
			
			System.out.println(dao.checkMovieHasSeason(1));
			
//			for (SeasonMovie ds : dao.getListSeasonMovie(2)) {
//				System.out.println(ds.getSeasonId());		
//				}	
	}
			
}