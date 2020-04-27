package com.qintess.eventos.dao;

import java.time.LocalDate;
import java.util.List;

import com.qintess.eventos.domain.Cliente;

public interface ClienteDao {
	
	void save(Cliente cliente);

    void update(Cliente cliente);
    
    Cliente findById(Long id); 

    void delete(Long id);

    List<Cliente> findAll();
    
    List<Cliente> findBydataNasc(LocalDate dataN);
    
    List<Cliente> findBynewsletter(Boolean newsletter);
    
    List<Cliente> findBysenhaCliente(String senha);

}
