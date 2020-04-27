package com.qintess.eventos.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qintess.eventos.domain.Casa;
import com.qintess.eventos.domain.Espetaculo;
import com.qintess.eventos.service.CasaService;
import com.qintess.eventos.service.EspetaculoService;

@Controller
@RequestMapping("/espetaculos")
public class EspetaculoController {

	@Autowired
	CasaService casaService;
	
	@Autowired
	EspetaculoService service;
	
	@GetMapping("")
	public String cadasdro(Espetaculo espetaculo, ModelMap model) {
		model.addAttribute("espetaculos", service.findAll());		
		return "espetaculo/listar";
	}
	
		
	@ModelAttribute("casa")
	public List<Casa> listaPerfis() {
		return casaService.findAll();
	}	
}
