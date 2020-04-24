package com.qintess.eventos.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qintess.eventos.domain.Usuario;
@Repository
public class UsuarioDaoImpl extends AbstractDao<Usuario, Long> implements UsuarioDao{

	@Override
	public List<Usuario> findByNome(String nome) {
 
		return null;
	}

	@Override
	public List<Usuario> findByAtivo(Boolean ativo) {
 
		return null;
	}

}
