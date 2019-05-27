package br.com.oncolor.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import br.com.oncolor.model.Produtos;

@Repository
public class ProdutoDao {
	@Autowired
	private EntityManager manager;

	public void gravar(Produtos produto) {
		manager.persist(produto);

	}

	public List<Produtos> lista() {
		return manager.createQuery("select c from Produtos c").getResultList();
	}

	public Produtos findOne(Integer id) {
		return manager.find(Produtos.class, id);
	}

	public void delete(Integer id) {
		manager.remove(findOne(id));
	}

	public void altera(Produtos produto) {
		manager.merge(produto);
		
	}
}
