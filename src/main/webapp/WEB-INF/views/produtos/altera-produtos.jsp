<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="updateProdutos" method="post">

		<input type="hidden" name="id" value="${produtos.id}" /> 
		
		<label>Nome	do Produto:</label> 
		<input type="text" name="nome" value="${produtos.nome}" />
		
		<label>Tipo</label> 
		<input type="text" name="tipo" value="${produtos.tipo}" />
		
		<label>Valor do Produto</label> 
		<input type="text" name="preco" value="${produtos.preco}" />
		
		<input type="hidden" name="imagem" value="${produtos.imagem}" />
		<img src="${produtos.imagem}" alt="Imagem do produto" height="42" width="42">
		
		<button type="reset">Limpar</button>
		<button type="submit">Cadastrar</button>

	</form>
</body>
</html>