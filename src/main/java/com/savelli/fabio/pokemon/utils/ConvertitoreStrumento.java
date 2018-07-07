package com.savelli.fabio.pokemon.utils;

import java.util.ArrayList;
import java.util.List;

import com.savelli.fabio.pokemon.model.Pokemon;
import com.savelli.fabio.pokemon.model.Strumento;
import com.savelli.fabio.pokemon.model.StrumentoSpeciale;
import com.savelli.fabio.pokemon.model.view.PokemonViewPokedex;
import com.savelli.fabio.pokemon.model.view.StrumentoSpecialeView;
import com.savelli.fabio.pokemon.model.view.StrumentoView;

public class ConvertitoreStrumento {
	
	public static StrumentoSpecialeView strumentoSpecialeToStrumentoSpecialeView(StrumentoSpeciale strumentoSpeciale){
		
		if(strumentoSpeciale==null)
			return null;
		StrumentoSpecialeView ret = new StrumentoSpecialeView();
		ret.setCategoria(strumentoSpeciale.getCategoria());
		ret.setDescrizione(strumentoSpeciale.getDescrizione());
		ret.setId(strumentoSpeciale.getId());
		ret.setImmagine(strumentoSpeciale.getImmagine());
		ret.setNome(strumentoSpeciale.getNome());
		
		List<PokemonViewPokedex> pokemon = new ArrayList<>(); 
		for(Pokemon p : strumentoSpeciale.getPokemon()) {
			PokemonViewPokedex pv = ConvertitorePokemon.pokemonToPokemonViewPokedex(p);
			pokemon.add(pv);
		}
		ret.setPokemon(pokemon);
		return ret;
	}

	public static StrumentoView strumentoToStrumentoView(Strumento strumento){
		
		if(strumento==null)
			return null;
		StrumentoView ret = new StrumentoView();
		ret.setCategoria(strumento.getCategoria());
		ret.setDescrizione(strumento.getDescrizione());
		ret.setId(strumento.getId());
		ret.setImmagine(strumento.getImmagine());
		ret.setNome(strumento.getNome());
		
		return ret;
	}
		
}
