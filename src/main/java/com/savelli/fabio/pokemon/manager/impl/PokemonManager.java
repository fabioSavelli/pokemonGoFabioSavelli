package com.savelli.fabio.pokemon.manager.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.savelli.fabio.pokemon.manager.IPokemonManager;
import com.savelli.fabio.pokemon.model.Pokemon;
import com.savelli.fabio.pokemon.repository.PokemonRepository;

@Component
public class PokemonManager implements IPokemonManager {

	@Autowired
	PokemonRepository pokemonRepository;
	
	@Override
	public Pokemon creaPokemon(Pokemon pokemon) {
		return pokemonRepository.save(pokemon);
	}

	@Override
	public Pokemon cercaPokemonPerNome(String nome) {
		List<Pokemon> pokemon = pokemonRepository.findByNome(nome);
		if(pokemon==null || pokemon.isEmpty())
			return null;
		return pokemon.get(0);
	}
	
	@Override
	public Pokemon cercaPokemonPerCodice(int codice) {
		List<Pokemon> pokemon = pokemonRepository.findByCodice(codice);
		if(pokemon==null || pokemon.isEmpty())
			return null;
		return pokemon.get(0);
	}

	@Override
	public List<Pokemon> getAll() {
		List<Pokemon> pokemon = pokemonRepository.findAll();
		if(pokemon==null)
			return new ArrayList<Pokemon>();
		return pokemon;
	}

	@Override
	public List<Pokemon> getAllPrimaGenerazione() {
		List<Pokemon> pokemon = pokemonRepository.findByGenerazioneOrderByCodiceAsc(1);
		if(pokemon==null)
			return new ArrayList<Pokemon>();
		return pokemon;
	}

	@Override
	public List<Pokemon> getAllSecondaGenerazione() {
		List<Pokemon> pokemon = pokemonRepository.findByGenerazioneOrderByCodiceAsc(2);
		if(pokemon==null)
			return new ArrayList<Pokemon>();
		return pokemon;
	}

	@Override
	public List<Pokemon> getAllTerzaGenerazione() {
		List<Pokemon> pokemon = pokemonRepository.findByGenerazioneOrderByCodiceAsc(3);
		if(pokemon==null)
			return new ArrayList<Pokemon>();
		return pokemon;
	}

}
