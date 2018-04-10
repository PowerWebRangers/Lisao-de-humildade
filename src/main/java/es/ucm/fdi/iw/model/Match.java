package es.ucm.fdi.iw.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Match {
	private long id;
	private User player1;
	private Character charPlayer1;
	private User player2;
	private Character charPlayer2;
	private Date date;
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@ManyToOne(targetEntity=User.class)
	public User getPlayer1() {
		return player1;
	}
	public void setPlayer1(User player1) {
		this.player1 = player1;
	}
	
	@ManyToOne(targetEntity=Character.class)
	public Character getCharPlayer1() {
		return charPlayer1;
	}
	public void setCharPlayer1(Character charPlayer1) {
		this.charPlayer1 = charPlayer1;
	}
	
	@ManyToOne(targetEntity=User.class)
	public User getPlayer2() {
		return player2;
	}
	public void setPlayer2(User player2) {
		this.player2 = player2;
	}
	
	@ManyToOne(targetEntity=Character.class)
	public Character getCharPlayer2() {
		return charPlayer2;
	}
	public void setCharPlayer2(Character charPlayer2) {
		this.charPlayer2 = charPlayer2;
	}
	
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

}
