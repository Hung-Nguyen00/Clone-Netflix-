
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.mysql.cj.jdbc.Driver;
import connect.DBConnect1;
import model.Account;
import model.ActivitiHistoryMovie;

public class Activity_HistoryDAO {

	public ArrayList<ActivitiHistoryMovie> getAVHbyAccountId(int account_id, int movie_id) 
			throws SQLException {
			 Connection connection = DBConnect1.getConnecttion();
			 String sql = "SELECT * FROM activiti_history_movie WHERE account_id = '" + account_id + "' and movie_id = '"+movie_id+"'";
			 PreparedStatement ps = connection.prepareCall(sql);
			 ResultSet rs = ps.executeQuery();
			 ArrayList<ActivitiHistoryMovie> list = new ArrayList<>();
			 while (rs.next()) {
				 ActivitiHistoryMovie AHM = new ActivitiHistoryMovie();
				 AHM.setAccountId(rs.getByte("account_id"));
				 AHM.setMovieId(rs.getByte("movie_id"));
				 AHM.setSaved(rs.getByte("saved"));
				 AHM.setLikebtn(rs.getByte("likebtn"));
				 AHM.setDislikebtn(rs.getByte("dislikebtn"));
				 AHM.setCreateDate(rs.getDate("create_date"));
				 list.add(AHM);
			 }
			 return list;
			 }
	public boolean checkActivity(int account_id, int movie_id) throws SQLException{
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT saved FROM activiti_history_movie WHERE account_id = '" + account_id + "' and movie_id = '"+ movie_id+"'";
		PreparedStatement ps;
		try {
			 ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				connection.close();
				return true;
			}	
		} catch (Exception e) {
			// TODO: handle exception
		}
	return false;
}
	public boolean insertActivity(int account_id, int movie_id) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "INSERT INTO activiti_history_movie (account_id, movie_id, likebtn, dislikebtn, saved) VALUES (?, ?, ?, ?, ?)";

		PreparedStatement ps = connection.prepareCall(sql);
		ps.setInt(1, account_id);
		ps.setInt(2, movie_id);
		ps.setInt(3, 0);
		ps.setInt(4, 0);
		ps.setInt(5, 0);
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}
	
	public boolean toggleSave(int account_id, int movie_id) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		Activity_HistoryDAO AHM_dao = new Activity_HistoryDAO();
		for(ActivitiHistoryMovie AHM : AHM_dao.getAVHbyAccountId(account_id,movie_id)) {
			if(AHM.getSaved()==0) {
				String sql = "update activiti_history_movie set saved = 1 where account_id = '" + account_id +"' and movie_id = '"+movie_id+"' ";
				PreparedStatement ps = connection.prepareCall(sql);
				int temp = ps.executeUpdate();
				System.out.println("doi save thanh 1");
				return temp == 1;
			}else {
				String sql = "update activiti_history_movie set saved = 0 where account_id = '" + account_id +"' and movie_id = '"+movie_id+"' ";
				PreparedStatement ps = connection.prepareCall(sql);
				int temp = ps.executeUpdate();
				System.out.println("doi save thanh 0");
				return temp == 1;
			}
		}
		
		} catch (Exception e) {
		return false;
		}
		return false;
	}
	
	public boolean toggleLike(int account_id, int movie_id) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		Activity_HistoryDAO AHM_dao = new Activity_HistoryDAO();
		for(ActivitiHistoryMovie AHM : AHM_dao.getAVHbyAccountId(account_id,movie_id)) {
			if(AHM.getLikebtn()==0) {
				String sql = "update activiti_history_movie set likebtn = 1, dislikebtn = 0 where account_id = '" + account_id +"' and movie_id = '"+movie_id+"' ";
				PreparedStatement ps = connection.prepareCall(sql);
				int temp = ps.executeUpdate();
				System.out.println("bo may thich may");
				return temp == 1;
			}else {
				String sql = "update activiti_history_movie set likebtn = 0 where account_id = '" + account_id +"' and movie_id = '"+movie_id+"' ";
				PreparedStatement ps = connection.prepareCall(sql);
				int temp = ps.executeUpdate();
				System.out.println("bo may het thich may roi");
				return temp == 1;
			}
		}
		
		} catch (Exception e) {
		return false;
		}
		return false;
	}
	
	public boolean toggleDislike(int account_id, int movie_id) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		Activity_HistoryDAO AHM_dao = new Activity_HistoryDAO();
		for(ActivitiHistoryMovie AHM : AHM_dao.getAVHbyAccountId(account_id,movie_id)) {
			if(AHM.getDislikebtn()==0) {
				String sql = "update activiti_history_movie set likebtn = 0, dislikebtn = 1 where account_id = '" + account_id +"' and movie_id = '"+movie_id+"' ";
				PreparedStatement ps = connection.prepareCall(sql);
				int temp = ps.executeUpdate();
				System.out.println("bo may ghet may");
				return temp == 1;
			}else {
				String sql = "update activiti_history_movie set dislikebtn = 0 where account_id = '" + account_id +"' and movie_id = '"+movie_id+"' ";
				PreparedStatement ps = connection.prepareCall(sql);
				int temp = ps.executeUpdate();
				System.out.println("bo may het ghet may roi");
				return temp == 1;
			}
		}
		
		} catch (Exception e) {
		return false;
		}
		return false;
	}	
	
	
	
	public static void main(String[] args) throws SQLException  {
		Activity_HistoryDAO AHM_dao = new Activity_HistoryDAO();
		int aid =2;
		int mid =4;
		if(AHM_dao.checkActivity(aid, mid)==false) {
			System.out.println("deo co");
			AHM_dao.insertActivity(aid, mid);
			System.out.println(AHM_dao.toggleLike(aid, mid));
			
		}else {
			System.out.println("co");
			System.out.println(AHM_dao.toggleLike(aid, mid));
			
		}
		 for(ActivitiHistoryMovie AHMdao : AHM_dao.getAVHbyAccountId((byte)aid, (byte)mid)){
			 System.out.println(AHMdao.getLikebtn()+"-"+ AHMdao.getDislikebtn());
			 
		 }
		 

	}

}
