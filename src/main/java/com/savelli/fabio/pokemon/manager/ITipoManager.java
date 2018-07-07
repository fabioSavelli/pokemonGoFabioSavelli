package com.savelli.fabio.pokemon.manager;

import com.savelli.fabio.pokemon.model.Tipo;

public interface ITipoManager {
	public Tipo creaTipo(Tipo tipo);
	public Tipo getByDescrizione(String descrizione);
}
