// default package
// Generated Apr 16, 2021, 3:06:54 PM by Hibernate Tools 5.4.18.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Account generated by hbm2java
 */
public class Account implements java.io.Serializable {

	private String username;
	private String password;
	private Date expirationDate;
	private String phone;
	private Set accountChilds = new HashSet(0);

	public Account() {
	}

	public Account(String username) {
		this.username = username;
	}

	public Account(String username, String password, Date expirationDate, String phone, Set accountChilds) {
		this.username = username;
		this.password = password;
		this.expirationDate = expirationDate;
		this.phone = phone;
		this.accountChilds = accountChilds;
	}

	public String getEmail() {
		return this.username;
	}

	public void setEmail(String username) {
		this.username = username;
	}

	public String getPasswordAccount() {
		return this.password;
	}

	public void setPasswordAccount(String password) {
		this.password = password;
	}

	public Date getExpirationDate() {
		return this.expirationDate;
	}

	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Set getAccountChilds() {
		return this.accountChilds;
	}

	public void setAccountChilds(Set accountChilds) {
		this.accountChilds = accountChilds;
	}

}
