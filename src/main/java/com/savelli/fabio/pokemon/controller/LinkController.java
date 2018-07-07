package com.savelli.fabio.pokemon.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.savelli.fabio.pokemon.constant.ConstantsWeb;
import com.savelli.fabio.pokemon.model.view.PokemonViewPokedex;
import com.savelli.fabio.pokemon.service.ILinkService;

@Controller
public class LinkController {

	@Autowired
	ILinkService linkService;
	
	@RequestMapping(method = RequestMethod.GET, path = "/goToPokedex")
	public ModelAndView goToPokedex(ModelAndView mv) {
		
		List<PokemonViewPokedex> pokemon1 = linkService.getPokedexPrimaGenerazione();
		List<PokemonViewPokedex> pokemon2 = linkService.getPokedexSecondaGenerazione();
		List<PokemonViewPokedex> pokemon3 = linkService.getPokedexTerzaGenerazione();
		
		mv.setViewName(ConstantsWeb.pokedex);
		mv.getModel().put("pokedex1", pokemon1);
		mv.getModel().put("pokedex2", pokemon2);
		mv.getModel().put("pokedex3", pokemon3);
		return mv;
	}
	
	
}
