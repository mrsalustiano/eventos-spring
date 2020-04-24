package com.qintess.eventos.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.qintess.eventos.domain.Perfil;

@Controller
public class AdminController {

	@RequestMapping("admin/")
	public String IndexPaginaAdmin() {
		return "admin/index";
	}
	
	@RequestMapping("admin")
	public String IndexPaginaAdminSemBarra() {
		return "admin/index";
	}
	
	@RequestMapping("/cabecalho")
	public String Cabecalho() {
		return "admin/cabecalho";
	}
	
	@RequestMapping("/footer")
	public String Footer() {
		return "admin/footer";
	}
	

	
	
	// Cadastro de Usuario
	@RequestMapping("admin/usuario")
	public String IndexPaginaCadastroUsuario() {
		return "admin/cadastroUsuario";
	}

	

	
	//cadastro de perfil
		public String IndexPaginaPerfil(Perfil perfil) {
			return "admin/perfil/cadastro";
		}
		
		
		
	
}
