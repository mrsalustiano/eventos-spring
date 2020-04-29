package com.qintess.eventos.dao;

import java.util.List;

import com.qintess.eventos.domain.Usuario;

public interface UsuarioDao {

	void save(Usuario usuario);

    void update(Usuario usuario);
    
    Usuario findById(Long id); 

    void delete(Long id);

    List<Usuario> findAll();
    
    List<Usuario> findByLogin(String login);
    
  
}
