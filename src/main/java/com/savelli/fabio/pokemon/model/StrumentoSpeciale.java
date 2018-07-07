package com.savelli.fabio.pokemon.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;

@Entity
public class StrumentoSpeciale extends Strumento{

	private static final long serialVersionUID = -9206738122019642906L;
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@ManyToMany
	private List<Pokemon> pokemon;
	
	public List<Pokemon> getPokemon() {
		return pokemon;
	}

	public void setPokemon(List<Pokemon> pokemon) {
		this.pokemon = pokemon;
	}
}
