package com.qintess.eventos.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/espetaculos")
public class EspetaculoController {

	@GetMapping("/cadastrar")
	public String cadastrar() {
		
		return "admin/espetaculo/cadastro";
	}
}
