package com.savelli.fabio.pokemon.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.savelli.fabio.pokemon.model.Pokemon;

@Repository
public interface PokemonRepository extends JpaRepository<Pokemon, Long>{
	public List<Pokemon> findByNome(String nome);
	public List<Pokemon> findByCodice(int codice);
	public List<Pokemon> findByGenerazioneOrderByCodiceAsc(int generazione);
}
