<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/detalhes.css">
    <script src="https://kit.fontawesome.com/4d815a01ff.js" crossorigin="anonymous"></script>
    <title>Detalhes - Elexs</title>
</head>
<body>
    <header class="header">


        <a href="./Home">
            <img class="logo" src="assets/logoelexs-recortado.png" alt="Logo">
        </a>
        


        <nav class="navbar">
            <button id="show-login"><a href="./ProdutosController">Produtos</a></button>
            
            
            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
        </nav>

    </header>

    <section class="product">
        <div class="product__photo">
            <div class="photo-container">
                <div class="photo-main">
                    <img src="${produto.image}" alt="">
                </div>
                
            </div>
        </div>
        <div class="product__info">
            <div class="title">
                <h1>${produto.nome}</h1>
             
            </div>
            <div class="price">
                <span>R$ ${produto.preco}</span>
            </div>

            <div class="description">
                <h3>Descricao</h3>
                <ul>
                    <li>${produto.descricao}</li>
                    
                </ul>
            </div>
            <button class="buy--btn">Adicionar ao Carrinho</button>
        </div>
    </section>
    
    <footer>
        
    </footer>
</body>
</html>