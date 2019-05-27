<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href=" assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/basico.css">
        <link rel="icon-bar" href="img/icon.jpg">
		<title>Oncolor Personalizados</title>
</head>
<body>
   
        <header>
                <nav class="navbar navbar-default ">
                    <div class="container">
        
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse-navbar" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
        
                            <a class="navbar-brand" href="home.html">Oncolor Personalizados</a>
                        </div>
        
                        <div class="collapse navbar-collapse " id="collapse-navbar">
                            <ul class="nav navbar-nav">
                                <li><a href="/lista-produtos">Produtos</a></li>
                                <li><a href="lista">Carrinho</a></li>
                                <li><a href="#">Logout</a></li>
                            </ul>
                        </div>
                         

                    </div>
                </nav>
        
              
        
</header>
	<div class="jumbotron color divisorDeConteudos">

		<div class="container">
			<h2>Informações do Produto</h2>
		</div>
	</div>
<div class="container">
        <div class="row">
            <div class="col-md-4 col-md-6">
                <figure class="thumbnail thumbnailSemBorda">
                    <img src="${produto.imagem}" alt="teste">
                </figure>
            </div>
          
           
            <form action="para-carrinho" class="alinhamentoVisualizar"> 
                      <input type="hidden" name="id" value="${produto.id}" /> 
                      		<h3>Descrição: </h3><br/>
                    		<h3>${produto.nome}</h3>
							<h3>${produto.preco}0R$</h3>
							<h4>${produto.tipo}</h4>
                    <a href="/lista-produtos" class="btn btn-danger">Voltar</a>
                    <button type="submit" class="btn btn-primary">Adicionar ao Carrinho</button>
                    <br/><br/>
                     
            </form>
        	</div>
        </div>

   
        <footer class="pFooter">
                <nav class="navbar navbar-inverse navbar-bottom">
                    <address>
                       Endereço: Rua das três Meninas, Diadema <br/>
                       Estado:São Paulo<br/>
                       Tel: (11) 95430 - 4778<br/>
                       Email: njguilhe@gmail.com
                    </address>
                    <p> &copy; 2019 Todos os direitos reservados</p>
                </nav>
   	   </footer>

<script src="assets/js/jquery.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/navbar-animation-fix.js"></script>
</body>
</html>