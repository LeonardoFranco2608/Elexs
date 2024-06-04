<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/addproduto.css">
    <script src="https://kit.fontawesome.com/4d815a01ff.js" crossorigin="anonymous"></script>
    <title>Adicionar Cards - Elexs</title>
</head>
<body>
    <header class="header">


        <a href="./Home">
            <img class="logo" src="assets/logoelexs-recortado.png" alt="Logo">
        </a>


        <nav class="navbar">
            <button id="show-login"><a href="./ProdutosController">Produtos</a></button>
            <button id="show-login"><a href="./login">Login</a></button>
            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
        </nav>

    </header>
    <main>
        <div class="main-container">
            <form action="./cadastrar-produto" method="post" enctype="multipart/form-data">
                <div class="title">
                    <h1>Cadastrar Produto</h1>
                </div>
                <div class="barra">

                </div>
                
                <input type="text" name="nome" placeholder="NOME">
             
                <select id="selectCategoria" name="categoria">
                    <option>CATEGORIA</option>
                    <option value="1">Jogos</option>
                    <option value="2">Streaming</option>
                    
                </select>
              
                <input type="text" id="inPreco" name="preco" step="0.01" min="0.00" placeholder="PRECO">
                
                <input type="text" id="inDesc" name="desc" placeholder="DESCRICAO">
              
                <input type="file" name="image" placeholder="IMAGEM">
                <div class="barra">

                </div>
                <button type="submit">Cadastrar Card</button>
            </form>
        </div>
    </main> 
</body>
</html>
