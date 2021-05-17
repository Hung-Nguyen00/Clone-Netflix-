
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.mysql.cj.jdbc.Driver;
import connect.DBConnect1;
import model.ActivitiHistoryMovie;

public class Activity_HistoryDAO {

	public ArrayList<ActivitiHistoryMovie> getAVHbyAccountId(int account_id) 
			throws SQLException {
			 Connection connection = DBConnect1.getConnection();
			 String sql = "SELECT * FROM activiti_history_movie WHERE account_id = '" + account_id + "'";
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
	
	
	public static void main(String[] args) throws SQLException  {
		Activity_HistoryDAO AHM_dao = new Activity_HistoryDAO();
		int id =1;
		 for(ActivitiHistoryMovie AHMdao : AHM_dao.getAVHbyAccountId(id)){
			 System.out.println(AHMdao.getLikebtn()+"-"+ AHMdao.getSaved());
		 }

	}

}
