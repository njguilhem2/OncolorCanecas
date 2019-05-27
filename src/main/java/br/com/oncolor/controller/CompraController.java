package br.com.oncolor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.oncolor.dao.ProdutoDao;
import br.com.oncolor.model.Produtos;

@Controller
public class CompraController {
	@Autowired
	private ProdutoDao produtoDao;
	@GetMapping("/lista-produtos")
	public ModelAndView lista() {
 		ModelAndView view = new ModelAndView("/comprar/lista-produtos");
		List<Produtos> produto = produtoDao.lista();
		view.addObject("produtos",produto);
		return view;
	}
	@GetMapping("/visualizaProdutos")
	public String visualizar(Integer id, Model model) {
		model.addAttribute("produto",produtoDao.findOne(id));
		
		return "/comprar/visualizar";
		
	} 
}
