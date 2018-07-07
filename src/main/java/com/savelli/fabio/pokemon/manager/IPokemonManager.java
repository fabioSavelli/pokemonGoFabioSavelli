package com.savelli.fabio.pokemon.manager;

import java.util.List;

import com.savelli.fabio.pokemon.model.Pokemon;

public interface IPokemonManager {
	public Pokemon creaPokemon(Pokemon pokemon);
	public Pokemon cercaPokemonPerNome(String nome);
	public Pokemon cercaPokemonPerCodice(int codice);
	public List<Pokemon> getAll();
	public List<Pokemon> getAllPrimaGenerazione();
	public List<Pokemon> getAllSecondaGenerazione();
	public List<Pokemon> getAllTerzaGenerazione();
}
