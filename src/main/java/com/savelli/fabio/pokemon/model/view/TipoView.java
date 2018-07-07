package com.savelli.fabio.pokemon.model.view;

public class TipoView {
	private long id;
	private String descrizione;
	private String colore;
	private String sfondo;
	
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
}
