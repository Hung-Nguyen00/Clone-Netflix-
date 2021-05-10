package model;
// default package
// Generated Apr 27, 2021, 3:04:25 PM by Hibernate Tools 5.4.27.Final

/**
 * Banner generated by hbm2java
 */
public class Banner implements java.io.Serializable {

	private BannerId id;
	private Menu menu;
	private Movie movie;

	public Banner() {
	}

	public Banner(BannerId id, Menu menu, Movie movie) {
		this.id = id;
		this.menu = menu;
		this.movie = movie;
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

}