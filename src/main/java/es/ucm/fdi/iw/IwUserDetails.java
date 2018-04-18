



package es.ucm.fdi.iw;

import org.springframework.security.core.userdetails.UserDetails;

public interface IwUserDetails extends UserDetails {
	int getHumildones();
	
	int getElo();
	
	String getEmail();

}


