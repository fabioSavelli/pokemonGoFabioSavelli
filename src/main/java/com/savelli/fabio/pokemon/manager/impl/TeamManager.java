package com.savelli.fabio.pokemon.manager.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.savelli.fabio.pokemon.manager.ITeamManager;
import com.savelli.fabio.pokemon.model.Team;
import com.savelli.fabio.pokemon.repository.TeamRepository;

@Component
public class TeamManager implements ITeamManager {

	@Autowired
	TeamRepository teamRepository;
	
	@Override
	public Team creaTeam(Team team) {
		return teamRepository.save(team);
	}

}
