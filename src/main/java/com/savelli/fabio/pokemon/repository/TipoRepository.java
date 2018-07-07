package com.savelli.fabio.pokemon.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.savelli.fabio.pokemon.model.Tipo;

@Repository
public interface TipoRepository extends JpaRepository<Tipo, Long>{
	public List<Tipo> findByDescrizione(String descrizione);
}
