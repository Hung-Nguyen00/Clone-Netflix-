package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.mysql.cj.jdbc.Driver;
import connect.DBConnect1;
import model.Category;
import model.Menu;

public class CategoryDAO {

	public ArrayList<Category> getCategorybyMenu(int menu_id) 
			throws SQLException {
			 Connection connection = DBConnect1.getConnection();
			 String sql = "SELECT * FROM category WHERE menu_id = '" + menu_id + "'";
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

	public static void main(String[] args) throws SQLException  {
		CategoryDAO category_dao = new CategoryDAO();
		 for(Category cd : category_dao.getCategorybyMenu(2)){
			 System.out.println(cd.getCategoryId()+"-"+ cd.getNameCategory());
		 }

	}
	
}
