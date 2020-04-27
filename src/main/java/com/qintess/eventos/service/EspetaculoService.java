package com.qintess.eventos.service;

import java.util.List;

import com.qintess.eventos.domain.Espetaculo;

public interface EspetaculoService {
	
    void save(Espetaculo espetaculo);

    void update(Espetaculo espetaculo);

    void delete(Long id);

    Espetaculo findById(Long id);

    List<Espetaculo> findAll();


}
