package es.ucm.fdi.iw.model;

import java.util.Date;

import javax.jws.soap.SOAPBinding.Use;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Match {
	private long id;
	private User player1;
	private Character charPlayer1;
	private User player2;
	private Character charPlayer2;
	private Date date;

}
