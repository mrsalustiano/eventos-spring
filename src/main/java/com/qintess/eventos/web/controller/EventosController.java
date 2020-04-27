package com.qintess.eventos.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/eventos")
public class EventosController {

	@GetMapping("/")
	public String lista() {

			return "eventos/listagem";
		}
	
}
