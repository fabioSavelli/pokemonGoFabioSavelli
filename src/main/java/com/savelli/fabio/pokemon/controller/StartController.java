package com.savelli.fabio.pokemon.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.savelli.fabio.pokemon.constant.ConstantsTipo;
import com.savelli.fabio.pokemon.constant.ConstantsWeb;
import com.savelli.fabio.pokemon.manager.IPokemonManager;
import com.savelli.fabio.pokemon.manager.IStrumentoManager;
import com.savelli.fabio.pokemon.manager.ITipoManager;
import com.savelli.fabio.pokemon.model.Pokemon;
import com.savelli.fabio.pokemon.model.Statistica;
import com.savelli.fabio.pokemon.model.Tipo;
import com.savelli.fabio.pokemon.repository.PokemonRepository;

@Controller
public class StartController {
	
	@Autowired
	IStrumentoManager strumentoManager;
	
	@Autowired
	ITipoManager tipoManager;
	
	@Autowired
	IPokemonManager pokemonManager;
	
	//@RequestMapping(method = RequestMethod.GET, path = "/")
	public String goToHome() {
		
		Statistica statistiche = new Statistica();

		Pokemon pokemon = new Pokemon();
//		Pokemon pokemon = pokemonManager.cercaPokemonPerCodice(83);
		
		List<Tipo> debolezze = new ArrayList<>();
		debolezze.add(tipoManager.getByDescrizione(ConstantsTipo.elettro));
		debolezze.add(tipoManager.getByDescrizione(ConstantsTipo.erba));
		
		List<Tipo> tipo = new ArrayList<>();
		tipo.add(tipoManager.getByDescrizione(ConstantsTipo.acqua));
		
//		statistiche.setPs(110);
//		statistiche.setAttacco(240);
//		statistiche.setDifesa(214);
//		statistiche.setPlMassimi(2694);
//		statistiche.setTassoCattura(20);
//		statistiche.setTassoFuga(7);
//
//		pokemon.setCaramelleNecessarie(50);
//		pokemon.setCodice(99);
//		pokemon.setDebolezze(debolezze);
//		pokemon.setDistanza(3);
//		pokemon.setGenerazione(1);
//		pokemon.setImmagine("../images/pokemon/099.png");
//		pokemon.setNome("Kingler");
//		pokemon.setSiEvolveIn(null);
//		pokemon.setSiEvolveDa(null);
//		pokemon.setStatistica(statistiche);
//		pokemon.setStrumentoSpecialeNecessario(null);
//		pokemon.setTipo(tipo);
//
//		pokemonManager.creaPokemon(pokemon);


		
		System.out.println("START");
		return ConstantsWeb.home;
//		return "app.test";
	}
}
