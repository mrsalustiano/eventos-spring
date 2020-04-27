package com.qintess.eventos.service;

import java.util.List;

import com.qintess.eventos.domain.Casa;

public interface CasaService {
	
	void save(Casa casa);

    void update(Casa casa);

    void delete(Long id);

    Casa  findById(Long id);

    List<Casa> findAll();
    



}
