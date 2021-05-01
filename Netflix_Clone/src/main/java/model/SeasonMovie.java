// default package
// Generated Apr 16, 2021, 3:06:54 PM by Hibernate Tools 5.4.18.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * SeasonMovie generated by hbm2java
 */
public class SeasonMovie implements java.io.Serializable {

	private byte seasonId;
	private Movie movie;
	private Date lastUpdate;
	private Set seriesMovies = new HashSet(0);

	public SeasonMovie() {
	}

	public SeasonMovie(byte seasonId, Movie movie) {
		this.seasonId = seasonId;
		this.movie = movie;
	}

	public SeasonMovie(byte seasonId, Movie movie, Date lastUpdate, Set seriesMovies) {
		this.seasonId = seasonId;
		this.movie = movie;
		this.lastUpdate = lastUpdate;
		this.seriesMovies = seriesMovies;
	}

	public byte getSeasonId() {
		return this.seasonId;
	}

	public void setSeasonId(byte seasonId) {
		this.seasonId = seasonId;
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

	public Set getSeriesMovies() {
		return this.seriesMovies;
	}

	public void setSeriesMovies(Set seriesMovies) {
		this.seriesMovies = seriesMovies;
	}

}
