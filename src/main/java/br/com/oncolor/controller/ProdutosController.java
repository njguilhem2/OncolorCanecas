package br.com.oncolor.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import br.com.oncolor.dao.ProdutoDao;
import br.com.oncolor.model.Produtos;
import br.com.oncolor.validacao.ValidacaoProdutos;

@Controller
public class ProdutosController {
	@Autowired
	private ProdutoDao produtoDao;
	@Autowired
	private ValidacaoProdutos validacaoProdutos;
	
	

	@RequestMapping("/admin/produtos")
	private String adiciona() {
		return "/produtos/adiciona";
	}


	@PostMapping("/value")
	@Transactional
	public String upload(HttpServletRequest request) throws IOException {
		try {
			Produtos produtos = new Produtos();
			
			//tentar Isolar este código
			//Salvando a Imagem
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

			CommonsMultipartFile multipartFile = null;
			multipartFile = (CommonsMultipartFile) multipartRequest.getFile("imagem");
			String imagem = multipartFile.getOriginalFilename().toString();
			String realPath = request.getServletContext().getRealPath("/");
			String path = realPath + "\\img\\" + imagem;
								
			multipartFile.transferTo(new File(path));
			System.out.println(path);
		
			
			//pegando os parametros
			String nome = request.getParameter("nome");
			String tipo = request.getParameter("tipo");
			Double preco = Double.parseDouble(request.getParameter("preco"));
			
			
			produtos.setImagem("\\img\\" + imagem);
			produtos.setNome(nome);
			produtos.setTipo(tipo);
			produtos.setPreco(preco);
						
			
				
			produtoDao.gravar(produtos);
			return "redirect:/admin/lista";
			
			
				
		} catch (IllegalStateException e) {
			throw new RuntimeException(e);
		}
	}

	@GetMapping("/admin/lista")
	public ModelAndView lista() {
		ModelAndView model = new ModelAndView("/produtos/lista");
		List<Produtos> produtos = produtoDao.lista();
		model.addObject("produtos", produtos);
		return model;
	}
	@GetMapping("/removeProdutos")
	@Transactional
	public String remove(Integer id) {
		produtoDao.delete(id);
		return "redirect:/admin/lista";
	}
	@GetMapping("/admin/alteraProdutos")
	public String edit(Integer id, Model model) {
		model.addAttribute("produtos",produtoDao.findOne(id));
		
		return "/produtos/altera-produtos";
		
	} 
	@PostMapping("/updateProdutos")
	@Transactional
	public String altera(Produtos produtos) {
		produtoDao.altera(produtos);
		return "redirect:/lista";
	}


}
