// default package
// Generated Apr 16, 2021, 3:06:54 PM by Hibernate Tools 5.4.18.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Menu generated by hbm2java
 */
public class Menu implements java.io.Serializable {

	private byte menuId;
	private String nameMenu;
	private Date createDate;
	private String metaTitile;
	private Set banners = new HashSet(0);
	private Set categories = new HashSet(0);

	public Menu() {
	}

	public Menu(byte menuId) {
		this.menuId = menuId;
	}

	public Menu(byte menuId, String nameMenu, Date createDate, String metaTitile, Set banners, Set categories) {
		this.menuId = menuId;
		this.nameMenu = nameMenu;
		this.createDate = createDate;
		this.metaTitile = metaTitile;
		this.banners = banners;
		this.categories = categories;
	}

	public byte getMenuId() {
		return this.menuId;
	}

	public void setMenuId(byte menuId) {
		this.menuId = menuId;
	}

	public String getNameMenu() {
		return this.nameMenu;
	}

	public void setNameMenu(String nameMenu) {
		this.nameMenu = nameMenu;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getMetaTitile() {
		return this.metaTitile;
	}

	public void setMetaTitile(String metaTitile) {
		this.metaTitile = metaTitile;
	}

	public Set getBanners() {
		return this.banners;
	}

	public void setBanners(Set banners) {
		this.banners = banners;
	}

	public Set getCategories() {
		return this.categories;
	}

	public void setCategories(Set categories) {
		this.categories = categories;
	}

}
