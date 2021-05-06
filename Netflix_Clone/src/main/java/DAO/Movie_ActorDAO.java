package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect1;
import model.ActorMovie;
import model.Movie;

public class Movie_ActorDAO {

	
		public ArrayList<ActorMovie> getListMovie_Actor(int movie_id) throws SQLException {
			Connection connection = DBConnect1.getConnecttion();
			String sql = "SELECT * FROM actor_movie WHERE movie_id = '"+ movie_id +"'";
			PreparedStatement ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			ArrayList<ActorMovie> list = new ArrayList<>();
			while (rs.next()) {
				ActorMovie actor = new ActorMovie();
				actor.setStt(rs.getInt("stt"));
				actor.setLastUpdate(rs.getString("last_update"));
				actor.setMovie_id(rs.getInt("movie_id"));
				actor.setActor_id(rs.getInt("actor_id"));
				list.add(actor);
			}
			return list;
		}

//		public ActorMovie getActor(int actor_id) throws SQLException {
//			Connection connection = DBConnect1.getConnecttion();
//			String sql = "SELECT * FROM actor WHERE actor_id = '" + actor_id + "'";
//			PreparedStatement ps = connection.prepareCall(sql);
//			ResultSet rs = ps.executeQuery();
//			ActorMovie actor = new ActorMovie();
//			while (rs.next()) {
//				actor.setFirstName(rs.getString("first_name"));
//				actor.setLastName(rs.getString("last_name"));
//				actor.setDirector(rs.getByte("director"));
//				actor.setActorId(rs.getInt("actor_id"));
//			}
//			return actor;
//		}

		public boolean insert(ActorMovie c) throws SQLException {
			try {
			Connection connection = DBConnect1.getConnecttion();
			String sql = "INSERT INTO actor_movie VALUE(?,?,?,?)";
			java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
			
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setInt(1, c.getStt());
			ps.setDate(2, sqlDate);
			ps.setInt(3, c.getMovie_id());
			ps.setInt(4, c.getActor_id());
			int temp = ps.executeUpdate();
			return temp == 1;
			} catch (Exception e) {
			return false;
			}
		}
		// get Max ID in database
		public int getMaxId() throws SQLException {
			try {
			Connection connection = DBConnect1.getConnecttion();
			String sql = "SELECT stt FROM actor_movie ORDER BY stt DESC LIMIT 1";
			PreparedStatement ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			int i = 0;
//			 loop any row in database to get every Items and return a value
			while(rs.next()) {
				i = rs.getInt("stt");
			}
			return i;
			} catch (Exception e) {
			return 0;
			}
		}
		
//		public boolean update(ActorMovie c) throws SQLException {
//			try {
//			Connection connection = DBConnect1.getConnecttion();
//			String sql = "UPDATE actor SET first_name = ?, last_name = ?, director = ?, last_update =? WHERE actor_id = ?";
//			PreparedStatement ps = connection.prepareCall(sql);
//			java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
//			ps.setString(1, c.getFirstName());
//			ps.setString(2, c.getLastName());
//			ps.setByte(3, c.getDirector());
//			ps.setDate(4, sqlDate);
//			ps.setInt(5, c.getActorId());
//			int temp = ps.executeUpdate();
//			return temp == 1;
//			} catch (Exception e) {
//			return false;
//			}
//		}		
	//	
		public boolean delete(int stt) throws SQLException {
		try {
			Connection connection = DBConnect1.getConnecttion();
			String sql = "DELETE FROM actor WHERE actor_id = '"+ stt +"'";
			PreparedStatement ps = connection.prepareCall(sql)	;
			int temp = ps.executeUpdate();
			return temp == 1;
			} catch (Exception e) {
			return false;
			}
		}		
		
		public static void main(String[] args) throws SQLException {
				Movie_ActorDAO dao = new Movie_ActorDAO();
				int j=2, k=25;
				for(int i=1; i<5; i++ ) {
					System.out.println(dao.insert(new ActorMovie(i, j, k )));
					k++;
				}
				System.out.println(dao.getMaxId());
				for (ActorMovie ds : dao.getListMovie_Actor(2)) {
					System.out.println(ds.getMovie_id() + " - " + ds.getActor_id());		
					}	
		}
	}
