package com.savelli.fabio.pokemon.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.savelli.fabio.pokemon.model.Team;

@Repository
public interface TeamRepository extends JpaRepository<Team, Long>{

}
