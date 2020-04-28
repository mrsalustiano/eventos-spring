package com.qintess.eventos.domain;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@SuppressWarnings("serial")
@Entity
public class Venda extends AbstractEntity<Long>{

	@ManyToOne
	@JoinColumn(name = "cliente_id")
	Cliente Cliente;
	
	@ManyToOne
	@JoinColumn(name = "espetaculo_id")
	Espetaculo espetaculo;
	
	
	private int quantidade;
	
	private BigDecimal valor;

	public Venda() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cliente getCliente() {
		return Cliente;
	}

	public void setCliente(Cliente cliente) {
		Cliente = cliente;
	}

	public Espetaculo getEspetaculo() {
		return espetaculo;
	}

	public void setEspetaculo(Espetaculo espetaculo) {
		this.espetaculo = espetaculo;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}
	
	
	
	
	
	
	
}
