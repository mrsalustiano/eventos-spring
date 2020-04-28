package com.qintess.eventos.web.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qintess.eventos.domain.Casa;
import com.qintess.eventos.domain.Espetaculo;
import com.qintess.eventos.service.CasaService;
import com.qintess.eventos.service.EspetaculoService;

@Controller
@RequestMapping("/admin/espetaculos")
public class EspetaculoController {

	@Autowired
	CasaService casaService;
	
	@Autowired
	EspetaculoService service;
	
	@GetMapping("")
	public String cadastro(Espetaculo espetaculo, ModelMap model) {
		model.addAttribute("espetaculos", service.findAll());		
		return "admin/espetaculo/cadastro";
	}
	
	
	@GetMapping("/cadastrar")
	public String cadastrar(Espetaculo espetaculo, ModelMap model) {
		model.addAttribute("espetaculos", service.findAll());		
		return "admin/espetaculo/cadastro";
	}
	
	
	@GetMapping("/listar")
	public String listar(ModelMap model) {
		model.addAttribute("espetaculos", service.findAll());
		return "admin/espetaculo/listar";
	}
	
	@Transactional
	@RequestMapping("/salva")
	public String salvar(@ModelAttribute Espetaculo espetaculo, RedirectAttributes attr) {
		
		Long valor = espetaculo.getId();
		
		if (valor == null) {
			service.save(espetaculo);
			attr.addFlashAttribute("mensagemSucesso", "Espetaculo adicionado com sucesso");	
		} else {
			service.update(espetaculo);
			attr.addFlashAttribute("mensagemSucesso", "Espetaculo  editado com sucesso");
		}
		
		return "redirect:/admin/espetaculos/cadastrar";
	}
	
	@PostMapping("/editar")
	public String editar(@Valid Espetaculo espetaculo, RedirectAttributes attr) {
		 service.update(espetaculo);
		 return "redirect:/admin/espetaculos/cadastro";
	}
	
	@GetMapping("/deleta/{id}")
	@Transactional
	public String deleta(@PathVariable(name = "id") Long id, RedirectAttributes attr) {
		
		service.delete(id);
		attr.addFlashAttribute("mensagemSucesso", "Espetaculo removido");
		return "redirect:/admin/espetaculos/listar";
		
	}
	
	@GetMapping("/altera/{id}")
	public String carregaAlterar(@PathVariable(name = "id") Long id, Model model, RedirectAttributes attr) {
		try {
			Espetaculo espetaculo = service.findById(id);
			model.addAttribute("espetaculos", service.findAll());
			model.addAttribute("espetaculo", espetaculo);
		} catch (Exception e) {
			attr.addFlashAttribute("mensagemErro", "ERRO GRAVE: " + e.getMessage());
		}
		
		return "admin/espetaculo/cadastro";
	}
	
	@ModelAttribute("casa")
	public List<Casa> listaPerfis() {
		return casaService.findAll();
	}	
}
