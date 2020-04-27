package com.qintess.eventos.service;

import java.time.LocalDate;
import java.util.List;

import com.qintess.eventos.domain.Cliente;

public interface ClienteService {
	
    
	void save(Cliente cliente);

    void update(Cliente cliente);
    
    Cliente findById(Long id); 

    void delete(Long id);

    List<Cliente> findAll();
    
    List<Cliente> findBydataNasc(LocalDate dataN);
    
    List<Cliente> findBynewsletter(Boolean newsletter);
    

}
