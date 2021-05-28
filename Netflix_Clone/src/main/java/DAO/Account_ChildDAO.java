package DAO;
import connect.DBConnect1
;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import model.Account;
import model.AccountChild;

public class Account_ChildDAO {
	
	public int getMaxId() throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT a.account_id as account_id FROM account_child as a ORDER BY a.account_id DESC LIMIT 1";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		Byte i = 0;
		while(rs.next()) {
			i = rs.getByte("account_id");
		}
		return i;
		} catch (Exception e) {
		return 0;
		}
	}

	
	public ArrayList<AccountChild> getAccountChildsbyEmail(String email) 
			throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM account_child WHERE email= '" + email + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		int i=0;
		ArrayList<AccountChild> list = new ArrayList<>();
		while (rs.next()) {
			i++;
			AccountChild ac = new AccountChild();
			ac.setAccountId(rs.getByte("account_id"));
			ac.setNameAccount(rs.getString("name_account"));
			ac.setCreateDate(rs.getDate("create_date"));
			ac.setAvatar(rs.getString("avatar"));
			ac.setEmail(rs.getString("email"));
			list.add(ac);
		}
		return list;
	}
	
	public boolean insert(AccountChild c) throws SQLException {
		try {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "INSERT INTO account_child  VALUE(?,?,?,?,?)";
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setByte(1, c.getAccountId());
		ps.setString(2, c.getNameAccount());
		ps.setString(3, c.getAvatar());
		ps.setString(4, c.getEmail());
		ps.setDate(5, sqlDate);
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

	public ArrayList<AccountChild> getAccountChildsbyId(byte id) 
			throws SQLException {
		Connection connection = DBConnect1.getConnecttion();
		String sql = "SELECT * FROM account_child WHERE account_id= '" + id + "'";
		PreparedStatement ps = connection.prepareCall(sql);
		ResultSet rs = ps.executeQuery();
		int i=0;
		ArrayList<AccountChild> list = new ArrayList<>();
		while (rs.next()) {
			i++;
			AccountChild ac = new AccountChild();
			ac.setAccountId(rs.getByte("account_id"));
			ac.setNameAccount(rs.getString("name_account"));
			ac.setCreateDate(rs.getDate("create_date"));
			ac.setAvatar(rs.getString("avatar"));
			ac.setEmail(rs.getString("email"));
			list.add(ac);
		}
		return list;
	}
	
	public static void main(String[] args) throws SQLException {
			Account_ChildDAO dao = new Account_ChildDAO();
//			for(int i=2; i<10; i++ ) {
//				System.out.println(dao.insert(new Account("abc"+ i + "@gmail.com","123", null, "0783727238", null))); 
//			}
			
//			System.out.println(dao.getAccount("abc@gmail.com").getPhone());
//		System.out.println(dao.getAccountChildsbyEmail("vuhoanglong21@gmail.com"));
//			System.out.println(dao.update(new Account("abc@gmail.com", "0411200", null, "0411200")));
//			System.out.println(dao.delete("abc3@gmail.com"));
		
			for (AccountChild ds : dao.getAccountChildsbyId((byte)1)) {
				System.out.println(ds.getEmail() + " - " + ds.getAccountId() + "-" + ds.getNameAccount());		
				}
	}
			
}