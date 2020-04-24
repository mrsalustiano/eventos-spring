package com.qintess.eventos.service;

import java.util.List;

import com.qintess.eventos.domain.CasaShow;

public interface CasaShowService {
	
	void save(CasaShow casaShow);

    void update(CasaShow casaShow);

    void delete(Long id);

    CasaShow  findById(Long id);

    List<CasaShow> findAll();
    



}
