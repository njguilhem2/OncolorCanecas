<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#collapse-navbar"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="home.html">Oncolor Personalizados</a>
			</div>

			<div class="collapse navbar-collapse" id="collapse-navbar">
				<ul class="nav navbar-nav">
					<li><a href="/lista-produtos">Produtos</a></li>
					<li><a href="lista">Carrinho</a></li>
					<li><a href="lista">Usuario</a></li>
					<li><a href="#">Logout</a></li>
				</ul>
			</div>



		</nav>



	</header>
	<div class="jumbotron color divisorDeConteudos">

		<div class="container">
			<h2>Nossas Canecas</h2>
		</div>
	</div>
	<div class="container">

		<ul class="nav nav-tabs">
			<li role="presentation" class="active"><a href="#">DatasComemoratias</a></li>
			<li role="presentation"><a href="#">Signos</a></li>
			<li role="presentation"><a href="#">Séries</a></li>

		</ul>
	</div>
	<div class="container">
		<c:forEach var="produto" items="${produtos}">

			<figure class="thumbnail testeAltura col-sm-6 col-md-4 col-lg-3">

				<img src="${produto.imagem}" alt="${produto.nome}" height="300"
					width="250">
				<figcaption class="caption">
					
					<h3>Valor da Caneca: ${produto.preco}0R$</h3>
					
					<a href="visualizaProdutos?id=${produto.id}"
						class="btn btn-primary">Visualizar</a>
				</figcaption>
			</figure>

		</c:forEach>
	</div>
	<footer class="pFooter divisorDeConteudos">
		<nav class="navbar navbar-inverse navbar-bottom">
			<address>
				Endereço: Rua das três Meninas, Diadema <br /> Estado:São Paulo<br />
				Tel: (11) 95430 - 4778<br /> Email: njguilhe@gmail.com
			</address>
			<p>&copy; 2019 Todas as Contas reservadas</p>
		</nav>
	</footer>
	<script src="/assets/js/jquery.js"></script>
	<script src="/assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="/assets/js/navbar-animation-fix.js"></script>
</body>
</html>