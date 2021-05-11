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


import model.Account;

public class AccountDAO {
	
	public ArrayList<Account> getListAccount() throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM account";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		int i=0;
		ArrayList<Account> list = new ArrayList<>();
		while (rs.next()) {
			i++;
			Account account = new Account();
			account.setEmail(rs.getString("email"));
			account.setPasswordAccount(rs.getString("password_account"));
			account.setExpirationDate(rs.getDate("expiration_date"));
			account.setPhone(rs.getString("phone"));
			account.setStt(i);
			list.add(account);
		}
		return list;
	}

	public Account getAccount(String email) throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM account WHERE email = '" + email + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();

		Account account = new Account();
		while (rs.next()) {
			account.setEmail(rs.getString("email"));
			account.setPasswordAccount(rs.getString("password_account"));
			account.setExpiration_date(rs.getString("expiration_date"));
			account.setPhone(rs.getString("phone"));
		}
		return account;
	}
	public boolean checkEmail(String email, String password) throws SQLException{
			Connection connection = DBConnect1.getConnecttion();
			String sql = "SELECT email FROM account WHERE email = '" + email + "' and password_account = '"+ password+"'";
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
	public boolean insert(Account c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "INSERT INTO account VALUE(?,?,?,?)";

		PreparedStatement ps = connection.prepareCall(sql);
		ps.setString(1, c.getEmail());
		ps.setString(2, c.getPasswordAccount());
		ps.setString(3, c.getExpiration_date());
		ps.setString(4, c.getPhone());
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}
	
	public boolean update(Account c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "UPDATE account SET password_account = ?, expiration_date = ?, phone = ? WHERE email = ?";
		PreparedStatement ps = connection.prepareCall(sql);
		
		ps.setString(1, c.getPasswordAccount());
		ps.setString(2, c.getExpiration_date());
		ps.setString(3, c.getPhone());
		ps.setString(4, c.getEmail());
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
	
	public boolean delete(String email) throws SQLException {
	try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "DELETE FROM account WHERE email = ?";
		PreparedStatement ps = connection.prepareCall(sql)	;
		ps.setString(1, email);
	
		int temp = ps.executeUpdate();
		return temp == 1;
		} catch (Exception e) {
		return false;
		}
	}		
	
	public static void main(String[] args) throws SQLException {
			AccountDAO dao = new AccountDAO();
//			for(int i=2; i<10; i++ ) {
//				System.out.println(dao.insert(new Account("abc"+ i + "@gmail.com","123", null, "0783727238", null))); 
//			}
			
//			System.out.println(dao.getAccount("abc@gmail.com").getPhone());
////			System.out.println(dao.checkEmail("thanhh41100@gmail.com"));
//			System.out.println(dao.update(new Account("abc@gmail.com", "0411200", null, "0411200")));
////			System.out.println(dao.delete("abc3@gmail.com"));
//			for (Account ds : dao.getListAccount()) {
//				System.out.println(ds.getEmail() + " - " + ds.getPasswordAccount() + "-" + ds.getPhone());		
//				}	
			System.out.println(dao.checkEmail("abc1@gmail.com", "thanhhung"));
	}
			
}