package connect;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.*;
import com.mysql.jdbc.Driver;
public class DBConnect1 {

		 public static Connection getConnecttion() {
			
		        Connection cons = null;
		        try {
		        	Class.forName("com.mysql.cj.jdbc.Driver");
		        cons = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3308/clone_netflix", "root", "Aa@123321");
		        	Statement mystmt = cons.createStatement();
		        	ResultSet result = mystmt.executeQuery("select * from account");
		        	while(result.next())
		        	{
		        		System.out.println(result.getString("email") + "," + result.getNString("password_account"));
		        	}
		        } catch (Exception e) {
		        e.printStackTrace();
		        }
		        return cons;
		        }
		        public static void main(String[] args) {
		        System.out.println(getConnecttion());
		        }
		
	}
