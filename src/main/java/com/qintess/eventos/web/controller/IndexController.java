package com.qintess.eventos.web.controller;

import java.io.UnsupportedEncodingException;
import java.time.format.DateTimeFormatter;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qintess.eventos.dao.EspetaculoDao;
import com.qintess.eventos.domain.Espetaculo;


@Controller
public class IndexController {

	
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	@Autowired
	private EspetaculoDao dao;
	
	@RequestMapping("")
	public String IndexPagina(Model model) {
		try {
			List<Espetaculo> espetaculos = dao.findAll();
			model.addAttribute("espetaculos", encodaImagem(espetaculos));
		}catch (UnsupportedEncodingException e) {
			model.addAttribute("mensagemErro", "ERRO GRAVE: " + e.getMessage());
		}
		return "index";

	}
	
	
	

	private List<Espetaculo> encodaImagem(List<Espetaculo> espetaculos)  throws UnsupportedEncodingException{
		
		for (Espetaculo espetaculoL : espetaculos) {
			if ( espetaculoL.getFolder() == null) {
				return espetaculos;
			}
			else {
			
				byte[]  encodeBase64 = Base64.getEncoder().encode(espetaculoL.getFolder());
				espetaculoL.setImagemEncoded(new String(encodeBase64, "UTF-8"));
			}
		}
		return espetaculos;
	}




	@RequestMapping("/cliente")
	public String clientePagina() {
		return "cliente/cadastro";

	}
	
	
	
	
	@RequestMapping("cabecalhoPrincipal")
	public String CabecalhoPrincipal() {
		return "fragments/cabecalho";
	}
	
	@RequestMapping("footerPrincipal")
	public String FooterPrinicpal() {
		return "fragments/footer";
	}
}
