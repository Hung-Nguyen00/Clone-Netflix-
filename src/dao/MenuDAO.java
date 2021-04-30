package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.mysql.cj.jdbc.Driver;
import connect.DBConnect1;
import model.Menu;

public class MenuDAO {

	public ArrayList<Menu> getMenu(int menu_id) 
			throws SQLException {
			 Connection connection = DBConnect1.getConnection();
			 String sql = "SELECT * FROM menu WHERE menu_id = '" + menu_id + "'";
			 PreparedStatement ps = connection.prepareCall(sql);
			 ResultSet rs = ps.executeQuery();
			 ArrayList<Menu> list = new ArrayList<>();
			 while (rs.next()) {
				 Menu menu = new Menu();
				 menu.setMenuId(rs.getByte("menu_id"));
				 menu.setNameMenu(rs.getString("menu_name"));
				 menu.setMetaTitile(rs.getString("meta_title"));
				 list.add(menu);
			 }
			 return list;
			 } 

	public static void main(String[] args) throws SQLException  {
		MenuDAO menu_dao = new MenuDAO();
		int id =1;
		 for(Menu md : menu_dao.getMenu(id)){
			 System.out.println(md.getMenuId()+"-"+ md.getNameMenu());
		 }

	}

}
