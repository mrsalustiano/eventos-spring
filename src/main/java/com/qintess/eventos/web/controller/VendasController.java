package com.qintess.eventos.web.controller;

import java.util.List;

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

import com.qintess.eventos.domain.Cliente;
import com.qintess.eventos.domain.Espetaculo;
import com.qintess.eventos.domain.Venda;
import com.qintess.eventos.service.ClienteService;
import com.qintess.eventos.service.EspetaculoService;
import com.qintess.eventos.service.VendaService;

@Controller
@RequestMapping("/vendas")
public class VendasController {
	
	@Autowired
	private VendaService service;

	@Autowired
	private EspetaculoService espetaculoService;
	
	@Autowired
	private ClienteService clienteService;
	
	
	
	@GetMapping("/")
	public String homeVenda(Venda venda, ModelMap model) {
		return "venda/compras";
	}
	
	
	
	@GetMapping("/comprar")
	public String comprar(Venda venda, ModelMap model) {
		model.addAttribute("vendas", service.findAll());
		
		return "venda/compras";
	}
	
	
	@GetMapping("/listar")
	public String listar(ModelMap model	) {
		model.addAttribute("vendas", service.findAll());
		
		return "venda/compras";
	}
	

	@Transactional
	@RequestMapping("/salva")
	public String salvar(@ModelAttribute Venda venda, RedirectAttributes attr ) {
		
		Long valor = venda.getId();
		if (valor == null) {
			service.save(venda);
			attr.addFlashAttribute("mensagemSucesso", "Venda efetuada com sucesso");	
		} else {
			service.update(venda);
			attr.addFlashAttribute("mensagemSucesso", "Venda atualizada com sucesso");
		}
		
		
		return "redirect:/vendas/comprar";
	}
	
	
	@PostMapping("/editar")
	public String editar(@Valid Venda venda, BindingResult result) {
		service.update(venda);
		
		return "redirect:/vendas/comprar";
	}
	
	
	@GetMapping("/deleta/{id}")
	@Transactional
	public String deleta(@PathVariable(name = "id") Long id, RedirectAttributes attr) {
	
		service.delete(id);
		attr.addFlashAttribute("mensagemSucesso", "Venda cancelada com sucesso");
		return "redirect:/vendas/comprar";
		
	}
	
	@GetMapping("/altera/{id}")
	public String carregaAlterar(@PathVariable(name = "id") Long id, Model model, RedirectAttributes attr) {
		try {

			Venda venda = service.findById(id);
			model.addAttribute("vendas", service.findAll());
			model.addAttribute("venda", venda);

		} catch (Exception e) {
			attr.addFlashAttribute("mensagemErro", "ERRO GRAVE: " + e.getMessage());

		}
		return "venda/compras";
	
	}
	
	
	@ModelAttribute("espetaculos")
	public List<Espetaculo> listaEspetaculos() {
		return espetaculoService.findAll();
	}	
	
	
	
	@ModelAttribute("clientes")
	public List<Cliente> listaClientes() {
		return clienteService.findAll();
	}	
}
