package com.savelli.fabio.pokemon.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Tipo implements Serializable{

	private static final long serialVersionUID = 6736835127647472953L;
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Id
	@GeneratedValue
	private long id;
	private String descrizione;
	private String colore;
	private String sfondo;
	
	@ManyToMany(mappedBy="debolezze")
	private List<Pokemon> debolezzeBy;
	
	@ManyToMany(mappedBy="tipo") 
	private List<Pokemon> tipoBy;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getDescrizione() { 
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public String getColore() {
		return colore;
	}
	public void setColore(String colore) {
		this.colore = colore;
	}
	public String getSfondo() {
		return sfondo;
	}
	public void setSfondo(String sfondo) {
		this.sfondo = sfondo;
	}
	public List<Pokemon> getDebolezzeBy() {
		return debolezzeBy;
	}
	public void setDebolezzeBy(List<Pokemon> debolezzeBy) {
		this.debolezzeBy = debolezzeBy;
	}
	public List<Pokemon> getTipoBy() {
		return tipoBy;
	}
	public void setTipoBy(List<Pokemon> tipoBy) {
		this.tipoBy = tipoBy;
	}
	
}
