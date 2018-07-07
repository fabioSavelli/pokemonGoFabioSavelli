package com.savelli.fabio.pokemon.utils;

import java.util.ArrayList;
import java.util.List;

import com.savelli.fabio.pokemon.model.Pokemon;
import com.savelli.fabio.pokemon.model.Tipo;
import com.savelli.fabio.pokemon.model.view.PokemonView;
import com.savelli.fabio.pokemon.model.view.PokemonViewPokedex;
import com.savelli.fabio.pokemon.model.view.TipoView;

public class ConvertitorePokemon {
	
	private static String generaCodice(int codice) {
		String ret = "#";
		if(codice >= 100)
			ret += ""+codice;
		else if(codice >= 10)
			ret += "0"+codice;
		else
			ret += "00"+codice;
		return ret;
	}
	
	private static PokemonView pokemonToPokemonView(Pokemon pokemon) {
		if(pokemon==null)
			return null;
		
		List<TipoView> tipo = new ArrayList<>(); 
		for(Tipo t : pokemon.getTipo())
			tipo.add(ConvertitoreTipo.tipoToTipoView(t));
		List<TipoView> debolezze = new ArrayList<>(); 
		for(Tipo t : pokemon.getDebolezze())
			debolezze.add(ConvertitoreTipo.tipoToTipoView(t));
		
		PokemonView ret = new PokemonView();
		ret.setCodice(generaCodice(pokemon.getCodice()));
		ret.setId(pokemon.getId());
		ret.setImmagine(pokemon.getImmagine());
		ret.setNome(pokemon.getNome());
		ret.setCaramelleNecessarie(pokemon.getCaramelleNecessarie());
		ret.setTipo(tipo);
		ret.setDebolezze(debolezze);
		return ret;
	}
	
	private static Pokemon getPrimo(Pokemon pokemon) {
		if(pokemon.getSiEvolveDa()==null)
			return pokemon;
		return getPrimo(pokemon.getSiEvolveDa());
	}
	
	private static List<Pokemon> getUltimi(Pokemon pokemon) {
		List<Pokemon> ret = new ArrayList<>();
		if(pokemon.getSiEvolveIn()==null || pokemon.getSiEvolveIn().isEmpty()) {
			ret.add(pokemon);
		}
		else {
			for(Pokemon p : pokemon.getSiEvolveIn()) {
				ret.addAll(getUltimi(p));
			}
		}
		return ret;
	}
	
	private static List<PokemonView> getListaEvoluzione(Pokemon pokemon){
		List<PokemonView> evoluzione = new ArrayList<>();
		if(pokemon.getSiEvolveDa()==null) {
			evoluzione.add(pokemonToPokemonView(pokemon));
		}
		else {
			evoluzione.addAll(getListaEvoluzione(pokemon.getSiEvolveDa()));
			evoluzione.add(pokemonToPokemonView(pokemon));
		}
		return evoluzione;
	}
	
	private static List<List<PokemonView>> getEvoluzioni(Pokemon pokemon){
		List<List<PokemonView>> evoluzione = new ArrayList<>();
		
		Pokemon primo = getPrimo(pokemon);
		List<Pokemon> ultimi = getUltimi(primo);
		
		for(Pokemon p : ultimi) {
			List<PokemonView> lista = getListaEvoluzione(p);
			evoluzione.add(lista);
		}
		return evoluzione;
	}
	
	public static PokemonViewPokedex pokemonToPokemonViewPokedex(Pokemon pokemon){
		
		if(pokemon==null)
			return null;
		
		List<TipoView> tipo = new ArrayList<>();
		List<TipoView> debolezze = new ArrayList<>();
		List<List<PokemonView>> evoluzioni = getEvoluzioni(pokemon);
		
		for(List<PokemonView> pv : evoluzioni){
			for(PokemonView p : pv){
				System.out.print(p.getCaramelleNecessarie()+" -> "+p.getNome()+" -> ");
			}
			System.out.println();
		}
		System.out.println();
		
		for(Tipo t : pokemon.getTipo()){
			TipoView tv = ConvertitoreTipo.tipoToTipoView(t);
			tipo.add(tv);
		}
		for(Tipo t : pokemon.getDebolezze()){
			TipoView tv = ConvertitoreTipo.tipoToTipoView(t);
			debolezze.add(tv);
		}
		
		PokemonViewPokedex ret = new PokemonViewPokedex();
		
		ret.setAlola(pokemonToPokemonView(pokemon.getFormaAlola()));
		ret.setCaramelleNecessarie(pokemon.getCaramelleNecessarie());
		ret.setCodice(generaCodice(pokemon.getCodice()));
		ret.setDebolezze(debolezze);
		ret.setDistanza(pokemon.getDistanza());
		ret.setEvoluzioni(evoluzioni);
		ret.setGenerazione(pokemon.getGenerazione());
		ret.setId(pokemon.getId());
		ret.setImmagine(pokemon.getImmagine());
		ret.setNome(pokemon.getNome());
		ret.setStatistica(pokemon.getStatistica());
		ret.setTipo(tipo);
		
		return ret;
	}

}
