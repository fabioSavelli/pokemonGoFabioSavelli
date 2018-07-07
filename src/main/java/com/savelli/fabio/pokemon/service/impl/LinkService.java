package com.savelli.fabio.pokemon.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.savelli.fabio.pokemon.manager.IPokemonManager;
import com.savelli.fabio.pokemon.model.Pokemon;
import com.savelli.fabio.pokemon.model.view.PokemonViewPokedex;
import com.savelli.fabio.pokemon.service.ILinkService;
import com.savelli.fabio.pokemon.utils.ConvertitorePokemon;

@Service
public class LinkService implements ILinkService {

	@Autowired
	IPokemonManager pokemonManager;
	
	@Override
	public List<PokemonViewPokedex> getPokedex() {
		List<Pokemon> pokemon = pokemonManager.getAll();
		List<PokemonViewPokedex> ret = new ArrayList<>();
		for(Pokemon p : pokemon) {
			PokemonViewPokedex pv = ConvertitorePokemon.pokemonToPokemonViewPokedex(p);
			ret.add(pv);
		}
		return ret;
	}

	@Override
	public List<PokemonViewPokedex> getPokedexPrimaGenerazione() {
		List<Pokemon> pokemon = pokemonManager.getAllPrimaGenerazione();
		List<PokemonViewPokedex> ret = new ArrayList<>();
		for(Pokemon p : pokemon) {
			if(!p.isAlola()) {
				PokemonViewPokedex pv = ConvertitorePokemon.pokemonToPokemonViewPokedex(p);
				ret.add(pv);
			}
		}
		return ret;
	}

	@Override
	public List<PokemonViewPokedex> getPokedexSecondaGenerazione() {
		List<Pokemon> pokemon = pokemonManager.getAllSecondaGenerazione();
		List<PokemonViewPokedex> ret = new ArrayList<>();
		for(Pokemon p : pokemon) {
			if(!p.isAlola()) {
				PokemonViewPokedex pv = ConvertitorePokemon.pokemonToPokemonViewPokedex(p);
				ret.add(pv);
			}
		}
		return ret;
	}

	@Override
	public List<PokemonViewPokedex> getPokedexTerzaGenerazione() {
		List<Pokemon> pokemon = pokemonManager.getAllTerzaGenerazione();
		List<PokemonViewPokedex> ret = new ArrayList<>();
		for(Pokemon p : pokemon) {
			if(!p.isAlola()) {
				PokemonViewPokedex pv = ConvertitorePokemon.pokemonToPokemonViewPokedex(p);
				ret.add(pv);
			}
		}
		return ret;
	}

}
