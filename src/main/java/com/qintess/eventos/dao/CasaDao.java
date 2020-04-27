package com.qintess.eventos.dao;

import java.util.List;

import com.qintess.eventos.domain.Casa;

public interface CasaDao {

	void save(Casa casaShow);

    void update(Casa casaShow);

    void delete(Long id);

    Casa  findById(Long id);

    List<Casa> findAll();
}
