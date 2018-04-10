package es.ucm.fdi.iw.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;


/**
 * Personaje del juego, con el que se lucha
 * Solo puede tener un propietario
 */

@Entity
public class Character {
	
	private long id;
	private User owner;
	private String name;
	private List<Match>matchs;
	private int level;
	private int experience;
	private int healthPoints;
	private int manaPoints;
	private int iniciative;
	private int strength;
	private int intelligence;
	private int armor;
	
	@Id
	@GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	public int getHealthPoints() {
		return healthPoints;
	}
	public void setHealthPoints(int healthPoints) {
		this.healthPoints = healthPoints;
	}
	public int getManaPoints() {
		return manaPoints;
	}
	public void setManaPoints(int manaPoints) {
		this.manaPoints = manaPoints;
	}
	public int getIniciative() {
		return iniciative;
	}
	public void setIniciative(int iniciative) {
		this.iniciative = iniciative;
	}
	public int getStrength() {
		return strength;
	}
	public void setStrength(int strength) {
		this.strength = strength;
	}
	public int getIntelligence() {
		return intelligence;
	}
	public void setIntelligence(int intelligence) {
		this.intelligence = intelligence;
	}
	public int getArmor() {
		return armor;
	}
	public void setArmor(int armor) {
		this.armor = armor;
	}
	
	@ManyToOne(targetEntity=User.class)
	public User getOwner() {
		return owner;
	}
	public void setOwner(User owner) {
		this.owner = owner;
	}
	
	@OneToMany(targetEntity=Match.class)
	public List<Match> getMatchs() {
		return matchs;
	}
	public void setMatchs(List<Match> matchs) {
		this.matchs = matchs;
	}
	

}
