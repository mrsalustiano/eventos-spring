package com.qintess.eventos.domain;

import java.math.BigDecimal;
import java.time.LocalDate;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@SuppressWarnings("serial")
@Entity
@Table(name = "espetaculo")
public class Espetaculo extends AbstractEntity<Long> {
	
	@Column(nullable = false, length = 80)
	private String faixaEtaria;
	
	@Column(nullable = false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate dataEspetaculo;
	
	@Column(nullable = false, scale = 2)
	private BigDecimal valor = new BigDecimal(0);
	
	@Column(nullable = false)
	private int capacidade;
	
	private int destaque;
	
	@Lob
	@Column(columnDefinition="mediumblob")
	private byte[] folder;
	
	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "casa_id")
	public Casa casa;

	@Column(nullable = false, length = 80)
	private String logradouro;
	
	@Column(nullable = false)
	private int numero;
	
	@Column(nullable = true, length = 80)
	private String complemento;
	
	@Column(nullable = true, length = 50)
	private String bairro;
	
	@Column(nullable = false, length = 9)
	private String cep;
	
	@Column(nullable = false, length = 80)
	private String cidade;
	
	@Column(nullable = false, length = 2)
	private String UF;

	public Espetaculo() {

	}

	public String getFaixaEtaria() {
		return faixaEtaria;
	}

	public void setFaixaEtaria(String faixaEtaria) {
		this.faixaEtaria = faixaEtaria;
	}

	public LocalDate getDataEspetaculo() {
		return dataEspetaculo;
	}

	public void setDataEspetaculo(LocalDate dataEspetaculo) {
		this.dataEspetaculo = dataEspetaculo;
	}

	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	public int getCapacidade() {
		return capacidade;
	}

	public void setCapacidade(int capacidade) {
		this.capacidade = capacidade;
	}

	public int getDestaque() {
		return destaque;
	}

	public void setDestaque(int destaque) {
		this.destaque = destaque;
	}

	public byte[] getFolder() {
		return folder;
	}

	public void setFolder(byte[] folder) {
		this.folder = folder;
	}

	public Casa getCasa() {
		return casa;
	}

	public void setCasa(Casa casa) {
		this.casa = casa;
	}

	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}

	public int getNumero() {
		return numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUF() {
		return UF;
	}

	public void setUF(String uF) {
		UF = uF;
	}

	
	
}
