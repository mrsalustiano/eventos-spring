package com.qintess.eventos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qintess.eventos.dao.ClienteDao;
import com.qintess.eventos.domain.Cliente;

@Service
public class ClienteServiceImpl implements ClienteService {

	@Autowired
	private ClienteDao dao;

	@Override
	@Transactional
	public void save(Cliente cliente) {
		dao.save(cliente);
		
	}

	@Override
	@Transactional
	public void update(Cliente cliente) {
		dao.update(cliente);
		
	}

	@Override
	@Transactional
	public void delete(Long id) {
		dao.delete(id);
		
	}

	@Override
	public Cliente findById(Long id) {
		
		return dao.findById(id);
	}

	@Override
	public List<Cliente> findAll() {  
	 
		return dao.findAll();
	}

	
	@Override
	public List<Cliente> findByEmail(String email) {
 
		return dao.findByEmail(email);
	}

	@Override
	public List<Cliente> findByCpf(String cpf) {
 
		return dao.findByCpf(cpf);
	}



}
