package com.qintess.eventos.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/compras")
public class ComprasController {

	@GetMapping("/")
	public String cadastrar() {
		return "compras/compras";
	}
}
