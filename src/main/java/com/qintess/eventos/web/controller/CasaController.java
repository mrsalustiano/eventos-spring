package com.qintess.eventos.web.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qintess.eventos.domain.Casa;
import com.qintess.eventos.service.CasaService;



@Controller
@RequestMapping("/admin/casas")
public class CasaController {

	@Autowired
	private CasaService service;
	
	@GetMapping("")
	public String cadastrarL(Casa casa, ModelMap model) {
		model.addAttribute("casas", service.findAll());
		return "admin/casas/cadastro";
	}
	
	@GetMapping("/cadastrar")
	public String cadastrar(Casa casa, ModelMap model) {
		model.addAttribute("casas", service.findAll());
		return "admin/casas/cadastro";
	}

	@GetMapping("/listar")
	public String listar(ModelMap model) {
		model.addAttribute("casa", service.findAll());
		return "admin/casas/listar";
	}
	
	@RequestMapping("/salva")
	@Transactional
	public String Salva(@ModelAttribute Casa casa,  
			@RequestParam(required=false, value="imagem") MultipartFile imagem,
			RedirectAttributes attr ) {
		
		byte[] bImagem;
		
		try {
			if(imagem != null && imagem.getSize() > 0) {
				bImagem = imagem.getBytes();
				casa.setImagemCasa(bImagem);
			}
		
		
			Long valor = casa.getId();
			if (valor == null) {
				service.save(casa);
				attr.addFlashAttribute("success", "Casa adicionado com sucesso");	
			} else {
				service.update(casa);
				attr.addFlashAttribute("success", "Casa editado com sucesso");
			}
		} catch (Exception e) {
			attr.addFlashAttribute("mensagemErro", "ERRO GRAVE: " + e.getMessage());
		}
		
		
		return "redirect:/admin/casas/cadastrar";
	}

	@Transactional
	@PostMapping("/editar")
	public String editar(@Valid Casa casa) {
		service.update(casa);		
		return "redirect:/admin/casas/cadastro";
	}
	
	
	@GetMapping("/deleta/{id}")
	@Transactional
	public String deleta(@PathVariable(name = "id") Long id, RedirectAttributes attr) {
	
		service.delete(id);
		attr.addFlashAttribute("sucesso", "Registro removido");
		return "redirect:/admin/casas/listar";
		
	}
	

	@RequestMapping("/altera/{id}")
	public String carregaAlterar(@PathVariable(name = "id") Long id, Model model, RedirectAttributes attr) {
		
	try {
			
			

			Casa casa = service.findById(id);

			model.addAttribute("casas", service.findAll());
			model.addAttribute("casa", casa);
	
			
		} catch (Exception e) {
			attr.addFlashAttribute("mensagemErro", "ERRO GRAVE: " + e.getMessage());
		}
		
		
				return "admin/casas/cadastro";
	
	}
	
	
	
	


}
