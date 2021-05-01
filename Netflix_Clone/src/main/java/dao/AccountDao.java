package dao;

import connect.DBConnect1;
import model.Account;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/** QUERY TO CREATE ACCOUNTS
  CREATE TABLE `accounts` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  `expirationDate` DATE,
  `phone` CHAR(10),
  PRIMARY KEY (`id`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

INSERT INTO
  `accounts`
VALUES
  ('1', 'abc@gmail.com', 'abAB12!@', null, null),
  ('2', 'acac@gmail.com', '!@12ABab', null, null);
 */

public class AccountDao {
    public boolean checkEmail(String username) {
        Connection con = DBConnect1.getConnecttion();
        String sql = "SELECT * FROM accounts WHERE username = '" + username + "'";
        PreparedStatement ps;
        try {
            ps = con.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                con.close();
                return true;
            }
        } catch (Exception e) {
            Logger.getLogger(AccountDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }

    public boolean insertAccount(Account acc) {
        Connection connection = DBConnect1.getConnecttion();
        String sql = "INSERT INTO accounts VALUES(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setString(1, acc.getEmail());
            ps.setString(2, acc.getPasswordAccount());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(AccountDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return false;
    }

}
