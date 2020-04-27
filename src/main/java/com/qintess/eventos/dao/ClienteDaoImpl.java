package com.qintess.eventos.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.qintess.eventos.domain.Cliente;

@Repository
public class ClienteDaoImpl extends AbstractDao<Cliente, Long> implements ClienteDao{

	@Override
	public List<Cliente> findBydataNasc(LocalDate dataN) {
		return createQuery("select c from Cliente c where c.dataNasc >= ?1 ) ", dataN);
		
	}

	@Override
	public List<Cliente> findBynewsletter(Boolean newsletter) {
		return createQuery("select c from Cliente c where c.newsletter = ?1 ) ", newsletter);
		
	}

	@Override
	public List<Cliente> findBysenhaCliente(String senha) {
		
		return createQuery("select c from Cliente c where c.senhaCliente = ?1 ) ", senha);
	}

}
