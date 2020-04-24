package com.qintess.eventos.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qintess.eventos.domain.Perfil;

@Repository
public class PerfilDaoImpl extends AbstractDao<Perfil, Long> implements PerfilDao {

	@Override
	public List<Perfil> findByNome(String nome) {
		
		return null;
	}

	@Override
	public List<Perfil> findByAtivo(Boolean ativo) {
		
		return null;
	}



	
		
}
