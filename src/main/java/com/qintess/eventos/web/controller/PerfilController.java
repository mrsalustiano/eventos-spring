package com.qintess.eventos.web.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qintess.eventos.domain.Perfil;
import com.qintess.eventos.service.PerfilService;

@Controller
@RequestMapping("/admin/perfis")
public class PerfilController {

	@Autowired
	private PerfilService perfilService;

//	@InitBinder
//	public void initBinder(WebDataBinder binder) {
//		binder.addValidators(new PerfilValidator());
//	}

	@GetMapping("/cadastrar")
	public String cadastrar(Perfil Perfil, ModelMap model) {
		model.addAttribute("perfis", perfilService.findAll());
		return "admin/perfil/cadastro";
	}

	@GetMapping("/listar")
	public String listar(Perfil perfil, ModelMap model) {
		model.addAttribute("perfis", perfilService.findAll());
		return "admin/perfil/listar";
	}

	@RequestMapping("/salva")
	public String salva(@ModelAttribute Perfil perfil) {

		Long valor = perfil.getId();
		if (valor == null) {
			perfilService.save(perfil);
			
		} else {
			perfilService.update(perfil);
			
		}
	
			//redirectAtt.addFlashAttribute("mensagemSucesso", "Produto cadastrado com sucesso!");
		
		return "redirect:/admin/perfis/cadastrar";

	}

	@PostMapping("/editar")
	public String editar(@Valid Perfil perfil, BindingResult result ) {
		perfilService.update(perfil);
		
		return "redirect:/admin/perfis/cadastro";
	}

	@GetMapping("/deleta/{id}")
	@Transactional
	public String deleta(@PathVariable(name = "id") Long id, RedirectAttributes attr) {
		perfilService.delete(id);
		attr.addFlashAttribute("sucesso", "Registro removido");
		return "redirect:/admin/perfis/listar";
	}

	@GetMapping("/altera/{id}")
	public String carregaAlterar(@PathVariable(name = "id") Long id, Model model, RedirectAttributes attr) {

		try {

			Perfil perfil = perfilService.findById(id);
			model.addAttribute("perfis", perfilService.findAll());
			model.addAttribute("perfil", perfil);

		} catch (Exception e) {
			attr.addFlashAttribute("mensagemErro", "ERRO GRAVE: " + e.getMessage());

		}
		return "admin/perfil/cadastro";
	}
}
