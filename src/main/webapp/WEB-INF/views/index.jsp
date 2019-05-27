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
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#collapse-navbar" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a class="navbar-brand" href="/">Oncolor Personalizados</a>
            </div>

            <div class="collapse navbar-collapse" id="collapse-navbar">
                <ul class="nav navbar-nav">
                    <li><a href="/lista-produtos">Produtos</a></li>
                    <li><a href="#">Carrinho</a></li>
                    <li><a href="#">Logout</a></li>
                </ul>
            </div>

        </nav>



    </header>
    <section>
        <div class="jumbotron color divisorDeConteudos semMargem" >

            <div class="container ">
                <img src="/img/logo.png" class="col-sm-6 " height="150px" width="200px" alt="Logo" >
                <h2 >Bem vindo à Oncolor Personalizados.(arrumar o fundo e fazer midiaQuery)</h2>
                
            </div>

        </div>
        <div class="sobreNosHome">
            <h2>Sobre nós:</h2>
            <h4 class="semMargem" >Oncolor Canecas Personalizados, uma loja virtual, a qual se dedica a personalização de canecas com qualidade e
                preço justo!</h4><br/>
            <h4>Fazemos sob encomenda, <a href="/faleConosco"> mande-nos sua ideia(colocar o web token).</a></h4>
        </div>
    </section>
    <section>
        <div class="jumbotron color divisorDeConteudos semMargem">

            <div class="container">

                <h2>Novidades</h2>

            </div>

        </div>
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <figure class="item active">
                    <img src="/img/game.jpg" alt="Depoimento 1">
                    <figcaption class="carousel-caption">
                        <h3>${produtos.nome}</h3>
                        <p>${produtos.preco}</p>
                    </figcaption>
                </figure>
                <figure class="item">
                    <img src="/img/namorados.jpg" alt="Depoimento 2">
                    <figcaption class="carousel-caption">
                        <h3>${produtos.nome}</h3>
                        <p>${produtos.preco}</p>
                    </figcaption>
                </figure>
                <figure class="item">
                    <img src="/img/namorados1.jpg" alt="Depoimento 3">
                    <figcaption class="carousel-caption">
                        <h3>${produtos.nome}</h3>
                        <p>${produtos.preco}</p>
                    </figcaption>
                </figure>
            </div>

            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>
    </section>
    <footer class="pFooter divisorDeConteudos">
        <nav class="navbar navbar-inverse navbar-bottom">
            <address>
                Endereço: Rua das três Meninas, Diadema <br />
                Estado:São Paulo<br />
                Tel: (11) 95430 - 4778<br />
                Email: njguilhe@gmail.com
            </address>
            <p> &copy; 2019 Todas as Contas reservadas</p>
        </nav>
    </footer>
    <script src="/assets/js/jquery.js"></script>
<script src="/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="/assets/js/navbar-animation-fix.js"></script>
</body>

</html>