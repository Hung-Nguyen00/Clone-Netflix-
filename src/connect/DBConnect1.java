package connect;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.*;
import com.mysql.jdbc.Driver;
public class DBConnect1 {

		 public static Connection getConnection() {
			
		        Connection cons = null;
		        try {
		        	Class.forName("com.mysql.cj.jdbc.Driver");
		        cons = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/netflix", "root", "@Nightfury21");
		        	
		        } catch (Exception e) {
		        e.printStackTrace();
		        }
		        return cons;
		 }
}