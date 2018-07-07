package com.savelli.fabio.pokemon.model.view;

import java.util.List;

public class PokemonView {
	private long id;
	private String nome;
	private String immagine;
	private String codice;
	private int caramelleNecessarie;
	private List<TipoView> tipo;
	private List<TipoView> debolezze;
	
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
	public String getCodice() {
		return codice;
	}
	public void setCodice(String codice) {
		this.codice = codice;
	}
	public int getCaramelleNecessarie() {
		return caramelleNecessarie;
	}
	public void setCaramelleNecessarie(int caramelleNecessarie) {
		this.caramelleNecessarie = caramelleNecessarie;
	}
	public List<TipoView> getTipo() {
		return tipo;
	}
	public void setTipo(List<TipoView> tipo) {
		this.tipo = tipo;
	}
	public List<TipoView> getDebolezze() {
		return debolezze;
	}
	public void setDebolezze(List<TipoView> debolezze) {
		this.debolezze = debolezze;
	}
	
}
