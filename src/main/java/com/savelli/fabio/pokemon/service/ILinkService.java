package com.savelli.fabio.pokemon.service;

import java.util.List;

import com.savelli.fabio.pokemon.model.view.PokemonViewPokedex;

public interface ILinkService {
	public List<PokemonViewPokedex> getPokedex();
	public List<PokemonViewPokedex> getPokedexPrimaGenerazione();
	public List<PokemonViewPokedex> getPokedexSecondaGenerazione();
	public List<PokemonViewPokedex> getPokedexTerzaGenerazione();
}
