package com.savelli.fabio.pokemon.utils;

import com.savelli.fabio.pokemon.model.Tipo;
import com.savelli.fabio.pokemon.model.view.TipoView;

public class ConvertitoreTipo {
	
	public static TipoView tipoToTipoView(Tipo tipo){
		
		if(tipo==null)
			return null;
		TipoView ret = new TipoView();
		ret.setColore(tipo.getColore());
		ret.setDescrizione(tipo.getDescrizione());
		ret.setId(tipo.getId());
		ret.setSfondo(tipo.getSfondo());
		return ret;
	}

}
