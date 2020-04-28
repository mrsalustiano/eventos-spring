package com.qintess.eventos.dao;

import org.springframework.stereotype.Repository;

import com.qintess.eventos.domain.Cliente;
import com.qintess.eventos.domain.Espetaculo;
import com.qintess.eventos.domain.Venda;

@Repository
public class VendaDaoImpl extends AbstractDao<Venda, Long> implements VendaDao {

	@Override
	public Venda findByEspetaculo(Espetaculo espetaculo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Venda findByCliente(Cliente cliente) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
