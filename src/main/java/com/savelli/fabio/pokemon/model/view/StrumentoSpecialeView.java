package com.savelli.fabio.pokemon.model.view;

import java.util.List;

public class StrumentoSpecialeView {
	private long id;
	private String nome;
	private String descrizione;
	private String immagine;
	private String categoria;
	private List<PokemonViewPokedex> pokemon;
	
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
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public String getImmagine() {
		return immagine;
	}
	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public List<PokemonViewPokedex> getPokemon() {
		return pokemon;
	}
	public void setPokemon(List<PokemonViewPokedex> pokemon) {
		this.pokemon = pokemon;
	}
}
