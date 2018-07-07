package com.savelli.fabio.pokemon.manager.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.savelli.fabio.pokemon.manager.IStrumentoManager;
import com.savelli.fabio.pokemon.model.Strumento;
import com.savelli.fabio.pokemon.repository.StrumentoRepository;

@Component
public class StrumentoManager implements IStrumentoManager {

	@Autowired
	StrumentoRepository strumentoRepository;
	
	@Override
	public Strumento creaStrumento(Strumento strumento) {
		return strumentoRepository.save(strumento);
	}

}
