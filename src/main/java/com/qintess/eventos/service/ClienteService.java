package com.qintess.eventos.service;

import java.util.List;

import com.qintess.eventos.domain.Cliente;

public interface ClienteService {
	
	void save(Cliente Cliente);

    void update(Cliente Cliente);
    
    Cliente findById(Long id); 

    void delete(Long id);

    List<Cliente> findAll();
    
    List<Cliente> findByEmail(String email);
    
    List<Cliente> findByCpf(String cpf);

}
