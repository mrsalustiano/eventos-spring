package com.qintess.eventos.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qintess.eventos.domain.Perfil;

@Repository
public class PerfilDaoImpl extends AbstractDao<Perfil, Long> implements PerfilDao {

	@Override
	public List<Perfil> findByNome(String nome) {
		 
		return createQuery("select p from Perfil p where p.nome like concat('%', ?1 , '%') order by p ASC", nome);
	}

	@Override
	public List<Perfil> findByAtivo(Boolean ativo) {
		
		return createQuery("select p from Perfil p where p.ativo = ?1 ) ", ativo);
	}



	
		
}
