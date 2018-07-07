package com.savelli.fabio.pokemon.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Pokemon implements Serializable{

	private static final long serialVersionUID = 8551853709338425820L;
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Id
	@GeneratedValue
	private long id;
	private String nome;
	private String immagine;
	private int codice;
	private int distanza;
	private int caramelleNecessarie;
	private int generazione; 
	private boolean alola;
	
	@ManyToMany
	private List<Tipo> tipo;
	
	@ManyToMany
	private List<Tipo> debolezze;
	
	@OneToMany
	private List<Pokemon> siEvolveIn;
	
	@OneToOne
	private Pokemon siEvolveDa;
	
	@OneToOne
	private Pokemon formaAlola;
	
	@ManyToOne
	private StrumentoSpeciale strumentoSpecialeNecessario;
	
	private Statistica statistica;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getImmagine() {
		return immagine;
	}
	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}
	public int getCodice() {
		return codice;
	}
	public void setCodice(int codice) {
		this.codice = codice;
	}
	public int getDistanza() {
		return distanza;
	}
	public void setDistanza(int distanza) {
		this.distanza = distanza;
	}
	public int getCaramelleNecessarie() {
		return caramelleNecessarie;
	}
	public void setCaramelleNecessarie(int caramelleNecessarie) {
		this.caramelleNecessarie = caramelleNecessarie;
	}
	public int getGenerazione() {
		return generazione;
	}
	public void setGenerazione(int generazione) {
		this.generazione = generazione;
	}
	public boolean isAlola() {
		return alola;
	}
	public void setAlola(boolean alola) {
		this.alola = alola;
	}
	public List<Tipo> getTipo() {
		return tipo;
	}
	public void setTipo(List<Tipo> tipo) {
		this.tipo = tipo;
	}
	public List<Tipo> getDebolezze() {
		return debolezze;
	}
	public void setDebolezze(List<Tipo> debolezze) {
		this.debolezze = debolezze;
	}
	public List<Pokemon> getSiEvolveIn() {
		return siEvolveIn;
	}
	public void setSiEvolveIn(List<Pokemon> siEvolveIn) {
		this.siEvolveIn = siEvolveIn;
	}
	public Pokemon getSiEvolveDa() {
		return siEvolveDa;
	}
	public void setSiEvolveDa(Pokemon siEvolveDa) {
		this.siEvolveDa = siEvolveDa;
	}
	public Pokemon getFormaAlola() {
		return formaAlola;
	}
	public void setFormaAlola(Pokemon formaAlola) {
		this.formaAlola = formaAlola;
	}
	public StrumentoSpeciale getStrumentoSpecialeNecessario() {
		return strumentoSpecialeNecessario;
	}
	public void setStrumentoSpecialeNecessario(StrumentoSpeciale strumentoSpecialeNecessario) {
		this.strumentoSpecialeNecessario = strumentoSpecialeNecessario;
	}
	public Statistica getStatistica() {
		return statistica;
	}
	public void setStatistica(Statistica statistica) {
		this.statistica = statistica;
	}
}
