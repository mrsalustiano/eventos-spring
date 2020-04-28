package com.qintess.eventos.service;

import java.util.List;

import com.qintess.eventos.domain.Cliente;
import com.qintess.eventos.domain.Espetaculo;
import com.qintess.eventos.domain.Venda;

public interface VendaService {
	
	void save(Venda venda);

    void update(Venda venda);
    
    Venda findById(Long id); 

    void delete(Long id);

    List<Venda> findAll();
    
	
	Venda findByEspetaculo(Espetaculo espetaculo);

	Venda findByCliente(Cliente cliente);
	

}
