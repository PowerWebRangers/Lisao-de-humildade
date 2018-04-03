package es.ucm.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


/**
 * Algo que puede tener un personaje.
 * Como muchos personajes pueden tener lo mismo, no tiene *un* propietario
 * (sino una lista).
 */
@Entity
public class Inventariable {

	private long Id;
	private List<User> propietarios;
	private String name;
	private String description;
	
	@Id
	@GeneratedValue
	public long getId() {
		return this.Id;
	}
	
	public void setId(long newId) {
		this.Id = newId;
	}

	public List<User> getPropietarios() {
		return propietarios;
	}

	public void setPropietarios(List<User> propietarios) {
		this.propietarios = propietarios;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
