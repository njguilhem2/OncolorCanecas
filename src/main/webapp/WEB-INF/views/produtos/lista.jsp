<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="/assets/css/basico.css">
		<title>Oncolor Personalizados</title>
</head>
<body>
<header>
        <nav class="navbar navbar-default ">

        
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-navbar" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="home.html">Oncolor Personalizados</a>
                </div>

                <div class="collapse navbar-collapse" id="collapse-navbar">
                    <ul class="nav navbar-nav">
                        <li><a href="/produtos">Adiciona Produtos</a></li>
                        <li><a href="/">Lista de Produtos</a></li>
                        <li><a href="relatórios">Relatórios</a></li>
                        <li><a href="relatórios">Ver Produtos</a></li>
                        <li><a href="#">${Usuário}</a></li>
                        <li><a href="#">Logout</a></li>
                    </ul>
                </div>
                 

            
        </nav>

      

</header>
<table class="table table-condensed"> 
    <tr>
        <th>Nome do Produto</th>
        <th>Imagem</th>
        <th>Valor</th>
        <th>Categoria</th>
        <th>Remover</th>
        <th>Alterar</th>
    </tr>
 	
 		<c:forEach var="produto" items="${produtos}">
 		<tr>
 			<td>${produto.nome}</td>
 			<td><img src="${produto.imagem}" alt="Smiley face" height="42" width="42"></td>
 			<td>${produto.preco}</td>
 			<td>${produto.tipo}</td>
 			<td><a href="removeProdutos?id=${produto.id}" class="btn btn-danger">Remover</a></td>
 			<td><a href="alteraProdutos?id=${produto.id}" class="btn btn-primary">Alterar</a></td>
 		</tr>
 		</c:forEach>
 		 	
 	</table>
</body>
</html>