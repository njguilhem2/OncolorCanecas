package br.com.oncolor.validacao;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;

import br.com.oncolor.model.Produtos;

@Component
public class ValidacaoProdutos {
	
	 Produtos produtos = new Produtos();
	
	public boolean validacao(){
		
		
		
		if(produtos.getImagem() == " " || produtos.getNome() == " " 
			||  produtos.getTipo() == " ") {
			System.out.println("entrei");
			return  false;
		}
		
		
		return true;
	} 
}
