package com.qintess.eventos.web.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qintess.eventos.domain.Perfil;
import com.qintess.eventos.domain.Usuario;
import com.qintess.eventos.service.PerfilService;
import com.qintess.eventos.service.UsuarioService;



@Controller
@RequestMapping("/admin/usuarios")
public class UsuarioController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired
	private PerfilService perfilService;
	

	
	@GetMapping("/cadastrar")
	public String cadastrar(Usuario usuario) {
		return "admin/usuario/cadastro";
	}
	
	
	@GetMapping("/listar")
	public String listar(ModelMap model	) {
		model.addAttribute("perfis", perfilService.findAll());
		return "admin/usuario/listar";
	}
	

	@Transactional
	@RequestMapping("/salva")
	public String salvar(@Valid @ModelAttribute Usuario usuario, BindingResult result, RedirectAttributes attr ) {
		
		System.out.println(usuario.toString());
		
		if (result.hasErrors()) {
			return "admin/usuario/cadastro";
		}
		
		usuarioService.save(usuario);
		attr.addFlashAttribute("success", "Usuario adicionado com sucesso");
		return "redirect:/admin/usuarios/cadastrar";
	}
	
	
	
	
	@ModelAttribute("perfis")
	public List<Perfil> listaPerfis() {
		return perfilService.findAll();
	}	


}
