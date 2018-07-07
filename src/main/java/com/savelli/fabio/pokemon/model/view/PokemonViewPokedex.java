package com.savelli.fabio.pokemon.model.view;

import java.util.List;

import com.savelli.fabio.pokemon.model.Statistica;

public class PokemonViewPokedex {
	private long id;
	private String nome;
	private String immagine;
	private String codice;
	private int distanza;
	private int caramelleNecessarie;
	private int generazione; 
	private List<TipoView> tipo;
	private List<TipoView> debolezze;
	private List<List<PokemonView>> evoluzioni;
	private PokemonView alola;
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
	public String getCodice() {
		return codice;
	}
	public void setCodice(String codice) {
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
	public List<List<PokemonView>> getEvoluzioni() {
		return evoluzioni;
	}
	public void setEvoluzioni(List<List<PokemonView>> evoluzioni) {
		this.evoluzioni = evoluzioni;
	}
	public PokemonView getAlola() {
		return alola;
	}
	public void setAlola(PokemonView alola) {
		this.alola = alola;
	}
	public Statistica getStatistica() {
		return statistica;
	}
	public void setStatistica(Statistica statistica) {
		this.statistica = statistica;
	}
	
}
