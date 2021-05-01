// default package
// Generated Apr 16, 2021, 3:06:54 PM by Hibernate Tools 5.4.18.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * AccountChild generated by hbm2java
 */
public class AccountChild implements java.io.Serializable {

	private byte accountId;
	private Account account;
	private String nameAccount;
	private String avatar;
	private Date createDate;
	private Set activitiHistoryMovies = new HashSet(0);

	public AccountChild() {
	}

	public AccountChild(byte accountId, Account account) {
		this.accountId = accountId;
		this.account = account;
	}

	public AccountChild(byte accountId, Account account, String nameAccount, String avatar, Date createDate,
			Set activitiHistoryMovies) {
		this.accountId = accountId;
		this.account = account;
		this.nameAccount = nameAccount;
		this.avatar = avatar;
		this.createDate = createDate;
		this.activitiHistoryMovies = activitiHistoryMovies;
	}

	public byte getAccountId() {
		return this.accountId;
	}

	public void setAccountId(byte accountId) {
		this.accountId = accountId;
	}

	public Account getAccount() {
		return this.account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public String getNameAccount() {
		return this.nameAccount;
	}

	public void setNameAccount(String nameAccount) {
		this.nameAccount = nameAccount;
	}

	public String getAvatar() {
		return this.avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Set getActivitiHistoryMovies() {
		return this.activitiHistoryMovies;
	}

	public void setActivitiHistoryMovies(Set activitiHistoryMovies) {
		this.activitiHistoryMovies = activitiHistoryMovies;
	}

}
