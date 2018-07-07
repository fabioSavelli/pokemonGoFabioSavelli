package com.savelli.fabio.pokemon.manager.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.savelli.fabio.pokemon.manager.ITipoManager;
import com.savelli.fabio.pokemon.model.Tipo;
import com.savelli.fabio.pokemon.repository.TipoRepository;

@Component
public class TipoManager implements ITipoManager {

	@Autowired
	TipoRepository tipoRepository;
	
	@Override
	public Tipo creaTipo(Tipo tipo) {
		return tipoRepository.save(tipo);
	}

	@Override
	public Tipo getByDescrizione(String descrizione) {
		List<Tipo> tipi = tipoRepository.findByDescrizione(descrizione);
		if(tipi==null || tipi.isEmpty())
			return null;
		return tipi.get(0);
	}

}
