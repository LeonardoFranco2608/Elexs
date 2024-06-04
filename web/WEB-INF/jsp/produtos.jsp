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
        <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="styles/produtos.css">
    </head>
    <body>

        <header class="header">


            <a href="./Home">
                <img class="logo" src="assets/logoelexs-recortado.png" alt="Logo">
            </a>

            
          

        </header>

        <div class="wrapper">
            <c:forEach items="${pr}" var="produto">
                <div class="single-card">
                    <div class="img-area">
                        <img src="${produto.image}" alt="">
                        <div class="overlay">
                            <button class="add-to-cart">Adicionar ao Carrinho</button>
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
</html>
