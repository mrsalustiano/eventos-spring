package com.qintess.eventos.dao;

import java.util.List;

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

	@Override
	public List<Venda> findByClienteEspetaculo(Cliente cliente, Espetaculo espetaculo) {
		
		return createQuery("select v from Venda v where (v.Cliente = ?1) and ( v.espetaculo = ?2 ) ", cliente, espetaculo);
	}


	
	

}
