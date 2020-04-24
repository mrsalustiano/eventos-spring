package com.qintess.eventos.service;

import java.util.List;

import com.qintess.eventos.domain.Usuario;

public interface UsuarioService {
	
	void save(Usuario usuario);

    void update(Usuario usuario);

    void delete(Long id);

    Usuario findById(Long id);

    List<Usuario> findAll();
    
    List<Usuario> findByNome(String nome);
    
    List<Usuario> findByAtivo(Boolean ativo);

}
