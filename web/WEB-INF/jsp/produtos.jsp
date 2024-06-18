<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/4d815a01ff.js" crossorigin="anonymous"></script>
        <title>Produtos - Elexs</title>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
        <link rel="shortcut icon" href="assets/LogoPg.png" type="image/x-icon">
        <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="styles/produtos.css">
    </head>
    <body>

        <header class="header">


            <a href="./Home">
                <img class="logo" src="assets/logoelexs-recortado.png" alt="Logo">
            </a>

                <form action="busca" method="get">
                    <input type="text" name="busca" placeholder="Busca" class="inpBusca">
                    </form>
        
            <nav class="navbar">
                <i class="fa-solid fa-cart-shopping" id="openCarrinho"></i>
            </nav>

            <div id="carrinho">
                <div id="background-carrinho"></div>
                <div id="carrinho-container">
                  <div class="carrinho-header">
                      <i id="closeCarrinho" class="fa-solid fa-xmark"></i>
                  </div>
                  <div id="carrinho-main">
                
                  </div>
                  <div class="carrinho-footer">
                    <button class="btn btn-finalizar">FINALIZAR COMPRA</button>
                  </div>
                </div>
              </div>
        </header>


        



        <div class="wrapper">
            <c:forEach items="${pr}" var="produto">
                <div class="single-card">
                    <div class="img-area">
                        <img src="${produto.image}" alt="">
                        <div class="overlay">
                            <button class="add-to-cart" data-idproduto="${produto.idProduto}">Adicionar ao Carrinho</button>
                            <a class="view-details" href="./Detalhes?unico=${produto.idProduto}">Ver Detalhes</a>
                        </div>
                    </div>

                    <div class="info">
                        <h3>${produto.nome}</h3>
                        <p class="price">R$ ${produto.preco}</p>
                        <p>${produto.descricao}</p>
                    </div>
                </div>
            </c:forEach>



        </div>
    </body>
    <script src="js/carrinho.js"></script>
</html>
