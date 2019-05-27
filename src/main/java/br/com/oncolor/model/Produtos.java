package br.com.oncolor.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Produtos {
	@Id
	@GeneratedValue
	private Integer id;
	
	private String nome;
	private String tipo;
	private double preco;
	private String imagem;

	public Integer getId() {
		return id;
	}
	
	
	/*
	 * @deprecated hibernate only
	 */
	public Produtos() {
		
	}
	
	
	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public String getImagem() {
		return imagem;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	
	
}
