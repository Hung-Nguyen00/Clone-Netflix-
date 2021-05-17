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


import model.Banner;

public class BannerDAO {
	
	public ArrayList<Banner> getListBanner() throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT *, DATE_FORMAT(last_update, '%d-%m-%Y') new_last_update FROM banner";//SELECT * FROM netflix.category WHERE menu_id = '"+ menu_id +"';
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Banner> list = new ArrayList<>();
		while (rs.next()) {
			Banner Banner = new Banner();
			Banner.setBanner_id(rs.getByte("banner_id"));
			Banner.setMenu_id(rs.getByte("menu_id"));
			Banner.setMovie_id(rs.getInt("movie_id"));
			Banner.setLast_update(rs.getString("new_last_update"));
			list.add(Banner);
		}
		return list;
	}
	public boolean checkBannerHasMovie(int movie_id) throws SQLException{
		Connection connection = DBConnect1.getConnecttion();
		String sql = "Select * from movie as sm where sm.movie_id in"
				+ "(Select movie_id from banner as sm1 where sm.movie_id = sm1.movie_id)"
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
//	public Banner getBanner(int Banner_id) throws SQLException {
//		Connection connection = DBConnect1.getConnecttion();
//		String sql = "SELECT * FROM Banner WHERE Banner_id = '" + Banner_id + "'";
//		PreparedStatement ps = connection.prepareCall(sql);
//		ResultSet rs = ps.executeQuery();
//		Banner Banner = new Banner();
//		while (rs.next()) {
//			Banner.setFirstName(rs.getString("first_name"));
//			Banner.setLastName(rs.getString("last_name"));
//			Banner.setDirector(rs.getByte("director"));
//			Banner.setBannerId(rs.getInt("Banner_id"));
//		}
//		return Banner;
//	}

	public boolean update(Banner c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "UPDATE banner SET movie_id = ?, last_update = ?  WHERE banner_id = ? and menu_id = ?";
		PreparedStatement ps = connection.prepareCall(sql);
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		ps.setInt(1, c.getMovie_id());
		ps.setDate(2, sqlDate);
		ps.setInt(3, c.getBanner_id());
		ps.setInt(4, c.getMenu_id());
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
	
	public static void main(String[] args) throws SQLException {
			BannerDAO dao = new BannerDAO();
			for(Banner banner: dao.getListBanner()) {
				System.out.println(banner.getBanner_id() + banner.getLast_update());
			}
			
			System.out.println(dao.checkBannerHasMovie(112));
			}
		
			
}