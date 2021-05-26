package DAO;
import java.sql.Connection
;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import com.mysql.cj.jdbc.Driver;
import connect.DBConnect1;
import model.Actor;
import model.Category;
import model.Menu;

public class CategoryDAO {

	public ArrayList<Category> getCategorybyMenu(int menu_id) 
			throws SQLException {
			 Connection connection = DBConnect1.getConnecttion();
			 String sql = "SELECT *, DATE_FORMAT(create_date, '%d-%m-%Y') new_create_date FROM category WHERE menu_id = '" + menu_id + "'";
			 PreparedStatement ps = connection.prepareCall(sql);
			 ResultSet rs = ps.executeQuery();
			 ArrayList<Category> list = new ArrayList<>();
			 while (rs.next()) {
				 Category category = new Category();
				 category.setCategoryId(rs.getInt("category_id"));
				 category.setMenuId(rs.getInt("menu_id"));
				 category.setCreate_date(rs.getString("new_create_date"));
				 category.setNameCategory(rs.getString("name_category"));
				 list.add(category);
			 }
			 return list;
			 }
	public boolean checkMovieHasCate(int category_id) throws SQLException{
		Connection connection = DBConnect1.getConnecttion();
		String sql = "Select * from category as sm where sm.category_id in"
				+ "(Select category_id from detail_movie as sm1 where sm.category_id = sm1.category_id) "
				+ "and sm.category_id = '"+ category_id +"'";
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
	
	public ArrayList<Category> getCategorybyMovieId(int category_id) 
			throws SQLException {
			 Connection connection = DBConnect1.getConnecttion();
			 String sql = "SELECT * FROM category inner join detail_movie on category.category_id=detail_movie.category_id where movie_id = '" + category_id + "'";
			 PreparedStatement ps = connection.prepareCall(sql);
			 ResultSet rs = ps.executeQuery();
			 ArrayList<Category> list = new ArrayList<>();
			 while (rs.next()) {
				 Category category = new Category();
				 category.setCategoryId(rs.getInt("category_id"));
				 category.setMenuId(rs.getInt("menu_id"));
				 category.setNameCategory(rs.getString("name_category"));
				 list.add(category);
			 }
			 return list;
			 }
	
	public ArrayList<Category> getCategorybyCategoryId(int category_id) 
			throws SQLException {
			 Connection connection = DBConnect1.getConnecttion();
			 String sql = "SELECT * FROM category WHERE category_id = '" + category_id + "'";
			 PreparedStatement ps = connection.prepareCall(sql);
			 ResultSet rs = ps.executeQuery();
			 ArrayList<Category> list = new ArrayList<>();
			 while (rs.next()) {
				 Category category = new Category();
				 category.setCategoryId(rs.getInt("category_id"));
				 category.setMenuId(rs.getInt("menu_id"));
				 category.setNameCategory(rs.getString("name_category"));
				 list.add(category);
			 }
			 return list;
			 }
	public ArrayList<Category> getListCategory() throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM category";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Category> list = new ArrayList<>();
		while (rs.next()) {
			 Category category = new Category();
			 category.setCategoryId(rs.getInt("category_id"));
			 category.setCreate_date(rs.getString("create_date"));
			 category.setNameCategory(rs.getString("name_category"));
			 list.add(category);
		}
		return list;
	}
	
	public ArrayList<Category> getListCategoryForMovie(int movie_id, int menu_id) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM category as a "
				+ "WHERE a.category_id NOT IN "
				+ "(SELECT am.category_id FROM detail_movie as am where am.movie_id = '" + movie_id +"')"
				+ " and a.menu_id = '"+ menu_id +"'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Category> list = new ArrayList<>();
		while (rs.next()) {
			 Category category = new Category();
			 category.setCategoryId(rs.getInt("category_id"));
			 category.setMenuId(rs.getInt("menu_id"));
			 category.setNameCategory(rs.getString("name_category"));
			 list.add(category);
		}
		return list;
	}

	public Category getCategory(int category_id) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM category WHERE category_id = '" + category_id + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		Category category = new Category();
		while (rs.next()) {
			 category.setCategoryId(rs.getInt("category_id"));
			 category.setNameCategory(rs.getString("name_category"));
			 category.setCreate_date(rs.getString("create_date"));
		}
		return category;
	}

	public boolean insert(Category c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "INSERT INTO category VALUE(?,?,?,?,?)";
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setInt(1, c.getCategoryId());
		ps.setString(2, c.getNameCategory().replace(" ", "-"));
		ps.setDate(3, sqlDate);
		ps.setString(4, c.getNameCategory());
		ps.setInt(5, c.getMenuId());
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}
	
	public int getMaxId() throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT c.category_id as category_id FROM category as c ORDER BY c.category_id DESC LIMIT 1";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		int i = 0;
		while(rs.next()) {
			i = rs.getInt("category_id");
			System.out.println(i);
		}
		return i;
		} catch (Exception e) {
		return 0;
		}
	}
	public int getMaxStt() throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT stt FROM detail_movie ORDER BY stt DESC LIMIT 1";
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
	
	
	
	public boolean update(Category c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "UPDATE category SET meta_title = ?, create_date = ?, name_category = ?, menu_id = ? WHERE category_id = ?";
		PreparedStatement ps = connection.prepareCall(sql);
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		ps.setString(1, c.getNameCategory().replace(" ", "-"));
		ps.setDate(2, sqlDate);
		ps.setString(3, c.getNameCategory());
		ps.setByte(4, (byte)c.getMenuId());
		ps.setInt(5, c.getCategoryId());
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
//	
	public boolean delete(int category_id) throws SQLException {
	try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "DELETE FROM category WHERE category_id = '"+ category_id +"'";
		PreparedStatement ps = connection.prepareCall(sql)	;
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
	public static void main(String[] args) throws SQLException  {
		CategoryDAO category_dao = new CategoryDAO();
		
//		 for (int i = 5; i < 10; i++) {
//			 System.out.println(category_dao.insert( new Category(i, "Comedy", "Comedy" + 1, 2)));
//		
//		}
		 System.out.println(category_dao.insert(new Category(10, "scrience fiction", 1)));
		 System.out.println(category_dao.checkMovieHasCate(10));
//		 for(Category cd : category_dao.getListCategoryForMovie(2,2)){
//			 System.out.println(cd.getCategoryId()+"-"+ cd.getNameCategory());
//		 }
	}
	
}
