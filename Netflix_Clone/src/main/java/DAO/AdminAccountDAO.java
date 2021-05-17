package DAO;
import connect.DBConnect1;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;


import model.AdminAccount;

public class AdminAccountDAO {
	
	public ArrayList<AdminAccount> getListAdminAccount() throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM admin_account";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		int i=0;
		ArrayList<AdminAccount> list = new ArrayList<>();
		while (rs.next()) {
			
			AdminAccount AdminAccount = new AdminAccount();
			AdminAccount.setNameAccount(rs.getString("name_account"));
			AdminAccount.setPasswordAdmin(rs.getString("password_admin"));
			AdminAccount.setFirstName(rs.getString("first_name"));
			AdminAccount.setLastName(rs.getString("last_name"));

			list.add(AdminAccount);
		}
		return list;
	}

//	public AdminAccount getAdminAccount(String email) throws SQLException {
//		Connection connection = DBConnect1.getConnecttion();
//		String sql = "SELECT *, DATE_FORMAT(expiration_date, '%Y-%m-%d') format_expiration_date FROM AdminAccount WHERE email = '" + email + "'";
//		PreparedStatement ps = connection.prepareCall(sql);
//		ResultSet rs = ps.executeQuery();
//
//		AdminAccount AdminAccount = new AdminAccount();
//		while (rs.next()) {
//			AdminAccount.setEmail(rs.getString("email"));
//			AdminAccount.setPasswordAdminAccount(rs.getString("password_AdminAccount"));
//			AdminAccount.setExpiration_date(rs.getString("format_expiration_date"));
//			AdminAccount.setPhone(rs.getString("phone"));
//		}
//		return AdminAccount;
//	}
	public AdminAccount checkAdmin(String name_account, String password) throws SQLException{
			Connection connection = DBConnect1.getConnecttion();
			String sql = "SELECT * FROM admin_account WHERE name_account = '" + name_account + "' and password_admin = '"+ password+"'";
			PreparedStatement ps;
			try {
				ps = connection.prepareCall(sql);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					AdminAccount admin = new AdminAccount();
					admin.setNameAccount(rs.getString("name_account"));
					admin.setFirstName(rs.getString("first_name"));
					admin.setLastName(rs.getString("last_name"));
					connection.close();
					return admin;
					}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return null;
	}
	public boolean valiAccountOfAdmin(String email) throws SQLException{
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT name_account FROM admin_account WHERE name_acocunt = '" + email + "'";
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
	public boolean insert(AdminAccount c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "INSERT INTO AdminAccount VALUE(?,?,?,?)";

		PreparedStatement ps = connection.prepareCall(sql);
		ps.setString(1, c.getNameAccount());
		ps.setString(2, c.getPasswordAdmin());
		ps.setString(3, c.getFirstName());
		ps.setString(4, c.getLastName());
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}
	
	public boolean update(AdminAccount c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "UPDATE admin_account SET password_admin = ?, first_name = ?, last_name = ? WHERE name_account = ?";
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setString(1, c.getPasswordAdmin());
		ps.setString(2, c.getFirstName());
		ps.setString(3, c.getLastName());
		ps.setString(4, c.getNameAccount());
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
	
	public boolean delete(String email) throws SQLException {
	try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "DELETE FROM admin_account WHERE name_account = ?";
		PreparedStatement ps = connection.prepareCall(sql)	;
		ps.setString(1, email);
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
	
	public static void main(String[] args) throws SQLException {
			AdminAccountDAO dao = new AdminAccountDAO();
//			for(int i=2; i<10; i++ ) {
//				System.out.println(dao.insert(new AdminAccount("abc"+ i + "@gmail.com","123", null, "0783727238", null))); 
//			}
			
//			System.out.println(dao.getAdminAccount("abc@gmail.com").getPhone());
////			System.out.println(dao.checkEmail("thanhh41100@gmail.com"));
//			System.out.println(dao.update(new AdminAccount("abc@gmail.com", "0411200", null, "0411200")));
////			System.out.println(dao.delete("abc3@gmail.com"));
//			for (AdminAccount ds : dao.getListAdminAccount()) {
//				System.out.println(ds.getEmail() + " - " + ds.getPasswordAdminAccount() + "-" + ds.getPhone());		
//				}
	}
			
}