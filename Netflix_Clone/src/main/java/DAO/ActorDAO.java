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


import model.Actor;

public class ActorDAO {
	
	public ArrayList<Actor> getListActor() throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM actor";//SELECT * FROM netflix.category WHERE menu_id = '"+ menu_id +"';
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Actor> list = new ArrayList<>();
		while (rs.next()) {
			Actor actor = new Actor();
			actor.setActorId(rs.getInt("actor_id"));
			actor.setFirstName(rs.getString("first_name"));
			actor.setLastName(rs.getString("last_name"));
			actor.setDirector(rs.getByte("director"));
			actor.setLastUpdate(rs.getDate("last_update"));
			list.add(actor);
		}
		return list;
	}
	
	public ArrayList<Actor> getListActorOfMovie(int movie_id) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM actor as a "
				+ "WHERE a.actor_id NOT IN "
				+ "(SELECT am.actor_id FROM actor_movie as am where am.movie_id = '"+ movie_id +"')";//SELECT * FROM netflix.category WHERE menu_id = '"+ menu_id +"';
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Actor> list = new ArrayList<>();
		while (rs.next()) {
			Actor actor = new Actor();
			actor.setActorId(rs.getInt("actor_id"));
			actor.setFirstName(rs.getString("first_name"));
			actor.setLastName(rs.getString("last_name"));
			actor.setDirector(rs.getByte("director"));
			actor.setLastUpdate(rs.getDate("last_update"));
			list.add(actor);
		}
		return list;
	}

	public Actor getActor(int actor_id) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM actor WHERE actor_id = '" + actor_id + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		Actor actor = new Actor();
		while (rs.next()) {
			actor.setFirstName(rs.getString("first_name"));
			actor.setLastName(rs.getString("last_name"));
			actor.setDirector(rs.getByte("director"));
			actor.setActorId(rs.getInt("actor_id"));
		}
		return actor;
	}

	public boolean insert(Actor c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "INSERT INTO actor VALUE(?,?,?,?,?)";
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setInt(1, c.getActorId());
		ps.setString(2, c.getFirstName());
		ps.setString(3, c.getLastName());
		ps.setByte(4, c.getDirector());
		ps.setDate(5, sqlDate);
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}
	
	public int getMaxId() throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT actor_id FROM actor ORDER BY actor_id DESC LIMIT 1";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		int i = 0;
		while(rs.next()) {
			i = rs.getInt("actor_id");
			System.out.println(i);
		}
		
		return i;
		} catch (Exception e) {
		return 0;
		}
	}
	
	public boolean update(Actor c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "UPDATE actor SET first_name = ?, last_name = ?, director = ?, last_update =? WHERE actor_id = ?";
		PreparedStatement ps = connection.prepareCall(sql);
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		ps.setString(1, c.getFirstName());
		ps.setString(2, c.getLastName());
		ps.setByte(3, c.getDirector());
		ps.setDate(4, sqlDate);
		ps.setInt(5, c.getActorId());
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
//	
	public boolean delete(int actor_id) throws SQLException {
	try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "DELETE FROM actor WHERE actor_id = '"+ actor_id +"'";
		PreparedStatement ps = connection.prepareCall(sql)	;
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
	
	public static void main(String[] args) throws SQLException {
			ActorDAO dao = new ActorDAO();
//			for(int i=6; i<10; i++ ) {
//				System.out.println(dao.insert(new Actor(i, "John", "Nguyen", Byte.parseByte("1")))); 
//			}
			System.out.println(dao.getMaxId());
			for (Actor ds : dao.getListActorOfMovie(2)) {
				System.out.println(ds.getFirstName() + " - " + ds.getLastName() + " " + ds.getLastUpdate());		
				}	
	}
			
}