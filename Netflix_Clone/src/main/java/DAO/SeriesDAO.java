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


import model.SeriesMovie;

public class SeriesDAO {
	
	public ArrayList<SeriesMovie> getListSeriesMovieOfSeason(byte season_id) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT *, DATE_FORMAT(last_update, '%d-%m-%Y') new_last_update FROM series_movie where season_id = '"+ season_id +"'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<SeriesMovie> list = new ArrayList<>();
		while (rs.next()) {
			SeriesMovie seriesMovie = new SeriesMovie();
			seriesMovie.setSeriesId(rs.getInt("series_id"));
			seriesMovie.setSeason_id(rs.getByte("season_id"));
			seriesMovie.setVideo(rs.getString("video"));
			seriesMovie.setDescriptionSeries(rs.getString("description_series"));
			seriesMovie.setDuration(rs.getString("duration"));
			seriesMovie.setLast_update(rs.getString("new_last_update"));
			list.add(seriesMovie);
		}
		return list;
	}
	
//	public ArrayList<SeriesMovie> getListSeriesMovieOfMovie(int movie_id) throws SQLException {
//		Connection connection = DBConnect1.getConnecttion();
//		String sql = "SELECT * FROM SeriesMovie as a "
//				+ "WHERE a.SeriesMovie_id NOT IN "
//				+ "(SELECT am.SeriesMovie_id FROM SeriesMovie_movie as am where am.movie_id = '"+ movie_id +"')";//SELECT * FROM netflix.category WHERE menu_id = '"+ menu_id +"';
//		PreparedStatement ps = connection.prepareCall(sql);
//		ResultSet rs = ps.executeQuery();
//		ArrayList<SeriesMovie> list = new ArrayList<>();
//		while (rs.next()) {
//			SeriesMovie seriesMovie = new SeriesMovie();
//			seriesMovie.setSeriesId(rs.getInt("series_id"));
//			seriesMovie.setSeason_id(rs.getByte("season_id"));
//			seriesMovie.setVideo(rs.getString("video"));
//			seriesMovie.setDescriptionSeries(rs.getString("description_series"));
//			seriesMovie.setDuration(rs.getString("duration"));
//			seriesMovie.setLast_update(rs.getString("last_update"));
//			list.add(seriesMovie);
//		}
//		return list;
//	}

	public SeriesMovie getSeriesMovie(int serie_id) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT *, DATE_FORMAT(last_update, '%d-%m-%Y') new_last_update FROM series_movie WHERE series_id = '" + serie_id + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		SeriesMovie seriesMovie = new SeriesMovie();
		while (rs.next()) {
			seriesMovie.setSeriesId(rs.getInt("series_id"));
			seriesMovie.setSeason_id(rs.getByte("season_id"));
			seriesMovie.setVideo(rs.getString("video"));
			seriesMovie.setDescriptionSeries(rs.getString("description_series"));
			seriesMovie.setDuration(rs.getString("duration"));
			seriesMovie.setLast_update(rs.getString("new_last_update"));
		}
		return seriesMovie;
	}

	public boolean insert(SeriesMovie c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "INSERT INTO series_movie VALUE(?,?,?,?,?,?)";
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setInt(1, c.getSeriesId());
		ps.setByte(2, c.getSeason_id());
		ps.setString(3, c.getDescriptionSeries());
		ps.setString(4, c.getDuration());
		ps.setString(5, c.getVideo());
		ps.setDate(6, sqlDate);
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}
	
	public int getMaxId() throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT series_id FROM series_movie ORDER BY series_id DESC LIMIT 1";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		int i = 0;
		while(rs.next()) {
			i = rs.getInt("series_id");
			System.out.println(i);
		}
		
		return i;
		} catch (Exception e) {
		return 0;
		}
	}
	
	public boolean update(SeriesMovie c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "UPDATE series_movie SET description_series = ?, duration = ?, video = ?, last_update =? WHERE series_id = ?";
		PreparedStatement ps = connection.prepareCall(sql);
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		
		ps.setString(1, c.getDescriptionSeries());
		ps.setString(2, c.getDuration());
		ps.setString(3, c.getVideo());
		ps.setDate(4, sqlDate);
		ps.setInt(5, c.getSeriesId());
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
//	
	public boolean delete(int series_id) throws SQLException {
	try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "DELETE FROM series_movie WHERE series_id = '"+ series_id +"'";
		PreparedStatement ps = connection.prepareCall(sql)	;
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
	
	public static void main(String[] args) throws SQLException {
			SeriesDAO dao = new SeriesDAO();
//			for(int i=6; i<10; i++ ) {
//				System.out.println(dao.insert(new SeriesMovie(i, (byte)2, "This is new Series", "1 ", "2"))); 
//			}
			
			System.out.println(dao.delete(2));
//			System.out.println(dao.update(new SeriesMovie(6, (byte)2, "This is new Series", "HElLo ", "2"))); 
//			System.out.println(dao.getMaxId());
//			for (SeriesMovie ds : dao.getListSeriesMovieOfSeason((byte)2)) {
//				System.out.println(ds.getSeriesId() + " - " + ds.getSeason_id());		
//				}	
}
			
}