package com.qintess.eventos.domain;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@SuppressWarnings("serial")
@Entity
@Table(name = "cliente")
public class Cliente extends AbstractEntity<Long> {

	@Column(nullable = false , length = 80 )
	private String nome;
	
	@Column(nullable = false , length = 20 )
	private String cpf;
	
	@Column(nullable = false, columnDefinition = "DATE")
	@DateTimeFormat(iso = ISO.DATE, pattern = "")
	private LocalDate dataNasc;
	
	@Column(nullable = false , length = 80 )
	private String email;
	
	@Column(nullable = false , length = 1 )
	private String sexo;
	
	@Column(nullable = true , length = 20 )
	private String telefone;
	
	@Column(nullable = false , length = 20 )
	private String celular;
	
	@Column(nullable = false , length = 9 )
	private String cep;
	
	@Column(nullable = false , length = 80 )
	private String logradouro;
	
	@Column(nullable = false  )
	private int numero;
	
	@Column(nullable = false , length = 80 )
	private String bairro;
	
	@Column(nullable = true , length = 50 )
	private String complemento;
	
	@Column(nullable = false , length = 80 )
	private String cidade;
	
	@Column(nullable = false , length = 2 )
	private String UF;
	
	@Column(nullable = false, length = 200)
	private String senhaCliente;
	
	 	
	private boolean newsletter;


	public Cliente() {
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public String getCpf() {
		return cpf;
	}


	public void setCpf(String cpf) {
		this.cpf = cpf;
	}


	public LocalDate getDataNasc() {
		return dataNasc;
	}


	public void setDataNasc(LocalDate dataNasc) {
		this.dataNasc = dataNasc;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getSexo() {
		return sexo;
	}


	public void setSexo(String sexo) {
		this.sexo = sexo;
	}


	public String getTelefone() {
		return telefone;
	}


	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}


	public String getCelular() {
		return celular;
	}


	public void setCelular(String celular) {
		this.celular = celular;
	}


	public String getCep() {
		return cep;
	}


	public void setCep(String cep) {
		this.cep = cep;
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


	public String getBairro() {
		return bairro;
	}


	public void setBairro(String bairro) {
		this.bairro = bairro;
	}


	public String getComplemento() {
		return complemento;
	}


	public void setComplemento(String complemento) {
		this.complemento = complemento;
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


	public boolean isNewsletter() {
		return newsletter;
	}


	public void setNewsletter(boolean newsletter) {
		this.newsletter = newsletter;
	}


	public String getSenhaCliente() {
		return senhaCliente;
	}


	public void setSenhaCliente(String senhaCliente) {
		this.senhaCliente = senhaCliente;
	}
	
	
	
	
}
