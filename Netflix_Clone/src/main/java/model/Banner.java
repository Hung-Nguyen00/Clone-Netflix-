// default package
// Generated Apr 16, 2021, 3:06:54 PM by Hibernate Tools 5.4.18.Final

import java.util.Date;

/**
 * Banner generated by hbm2java
 */
public class Banner implements java.io.Serializable {

	private BannerId id;
	private Menu menu;
	private Movie movie;
	private Date lastUpdate;

	public Banner() {
	}

	public Banner(BannerId id, Menu menu, Movie movie) {
		this.id = id;
		this.menu = menu;
		this.movie = movie;
	}

	public Banner(BannerId id, Menu menu, Movie movie, Date lastUpdate) {
		this.id = id;
		this.menu = menu;
		this.movie = movie;
		this.lastUpdate = lastUpdate;
	}

	public BannerId getId() {
		return this.id;
	}

	public void setId(BannerId id) {
		this.id = id;
	}

	public Menu getMenu() {
		return this.menu;
	}

	public void setMenu(Menu menu) {
		this.menu = menu;
	}

	public Movie getMovie() {
		return this.movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}

	public Date getLastUpdate() {
		return this.lastUpdate;
	}

	public void setLastUpdate(Date lastUpdate) {
		this.lastUpdate = lastUpdate;
	}

}
