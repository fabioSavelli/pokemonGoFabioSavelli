package com.savelli.fabio.pokemon.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Utente implements Serializable{

	private static final long serialVersionUID = 3818850665286156967L;
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Id
	@GeneratedValue
	private long id;
	private String username;
	private String email;
	private String psw;
	private char sesso;
	private int livello;
	private int codice;
	private int attivo;
	
	@OneToOne
	private Team team;
	
	@OneToMany
	private List<Pokemon> pokemon;

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPsw() {
		return psw;
	}
	public void setPsw(String psw) {
		this.psw = psw;
	}
	public char getSesso() {
		return sesso;
	}
	public void setSesso(char sesso) {
		this.sesso = sesso;
	}
	public int getLivello() {
		return livello;
	}
	public void setLivello(int livello) {
		this.livello = livello;
	}
	public int getCodice() {
		return codice;
	}
	public void setCodice(int codice) {
		this.codice = codice;
	}
	public int getAttivo() {
		return attivo;
	}
	public void setAttivo(int attivo) {
		this.attivo = attivo;
	}
	public Team getTeam() {
		return team;
	}
	public void setTeam(Team team) {
		this.team = team;
	}
	public List<Pokemon> getPokemon() {
		return pokemon;
	}
	public void setPokemon(List<Pokemon> pokemon) {
		this.pokemon = pokemon;
	}
	
	
		
}
