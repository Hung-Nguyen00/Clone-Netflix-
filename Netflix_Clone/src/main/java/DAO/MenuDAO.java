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


import model.Menu;

public class MenuDAO {
	

	public Menu getMenu(byte Menu_id) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM Menu WHERE menu_id = '" + Menu_id + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		Menu Menu = new Menu();
		while (rs.next()) {
			Menu.setMenuId(rs.getByte("menu_id"));
			Menu.setNameMenu(rs.getString("name_menu"));
		}
		return Menu;
	}
	
	public ArrayList<Menu> getListMenu(byte menu_id) 
			throws SQLException {
			 Connection connection = DBConnect1.getConnecttion();
			 String sql = "SELECT * FROM menu WHERE menu_id = '" + menu_id + "'";
			 PreparedStatement ps = connection.prepareCall(sql);
			 ResultSet rs = ps.executeQuery();
			 ArrayList<Menu> list = new ArrayList<>();
			 while (rs.next()) {
				 Menu menu = new Menu();
				 menu.setMenuId(rs.getByte("menu_id"));
				 menu.setNameMenu(rs.getString("name_menu"));
				 menu.setMetaTitile(rs.getString("meta_titile"));
				 list.add(menu);
			 }
			 return list;
			 } 
	
	public Menu getMenuOfMovie(int movie_id) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "select m.name_menu as name_menu, m.menu_id as menu_id from netflix.menu as m "
				+ "JOIN netflix.category as c on m.menu_id = c.menu_id "
				+ "join netflix.detail_movie as d on d.category_id = c.category_id "
				+ "where d.movie_id = '"+ movie_id +"'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		Menu Menu = new Menu();
		while (rs.next()) {
			Menu.setMenuId(rs.getByte("menu_id"));
			Menu.setNameMenu(rs.getString("name_menu"));
		}
		return Menu;
	}
	
	public static void main(String[] args) throws SQLException {
			MenuDAO dao = new MenuDAO();
			System.out.println(dao.getMenuOfMovie(100).getMenuId());
//			for(int i=6; i<10; i++ ) {
//				System.out.println(dao.insert(new Menu(i, "John", "Nguyen", Byte.parseByte("1")))); 
//			}
			
	}
			
}