package es.ucm.fdi.iw.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Friendship {
	private long id;
	private User friend1;
	private User friend2;
	private Date since;
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	@OneToOne(targetEntity=User.class)
	public User getFriend1() {
		return friend1;
	}
	public void setFriend1(User friend1) {
		this.friend1 = friend1;
	}
	
	@OneToOne(targetEntity=User.class)
	public User getFriend2() {
		return friend2;
	}
	public void setFriend2(User friend2) {
		this.friend2 = friend2;
	}
	
	
	public Date getSince() {
		return since;
	}
	public void setSince(Date since) {
		this.since = since;
	}
	
	

}
