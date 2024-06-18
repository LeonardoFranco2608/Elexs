<!DOCTYPE html>

<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <script src="https://kit.fontawesome.com/4d815a01ff.js" crossorigin="anonymous"></script>
        <title>Login - Elexs</title>
        <link rel="stylesheet" href="styles/login.css">
        <link rel="stylesheet" href="styles/index.css">
        <link rel="shortcut icon" href="assets/LogoPg.png" type="image/x-icon">
    </head>
    <body>


        <header class="header">


            <a href="./Home">
                <img class="logo" src="assets/logoelexs-recortado.png" alt="Logo">
            </a>
            
    
    
            <nav class="navbar">
                <button id="show-login"><a href="./ProdutosController">Produtos</a></button>
                
        
                <i class="fa-solid fa-cart-shopping" id="openCarrinho"></i>
                
                
            </nav>
            
            <div id="carrinho">
                <div id="background-carrinho"></div>
                <div id="carrinho-container">
                  <div class="carrinho-header">
                      <i id="closeCarrinho" class="fa-solid fa-xmark"></i>
                  </div>
                  <div id="carrinho-main"></div>
                  <div class="carrinho-footer">
                    <button class="btn btn-finalizar">FINALIZAR COMPRA</button>
                  </div>
                </div>
              </div>
            
    
        </header>


        <div class="container">
            <input type="checkbox" id="check">
            <div class="login form">
                <header>Login</header>
                <form action="logar" method="post">
                    <input type="email" name="email" placeholder="email">
                    <input type="password" name="senha" placeholder="senha">
                    <button type="submit" class="button" >Logar</button>
                </form>
                <div class="signup">
                    <span class="signup">Nao tem uma conta ?
                        <label for="check">Cadastro</label>
                    </span>
                </div>
            </div>
            <div class="registration form">
                <header>Cadastro</header>
                <form action="cadastrar" method="post">
                    <input type="text" placeholder="nome" name="nome">
                    <input type="email" placeholder="email" name="email">
                    <input type="password" placeholder="crie uma senha" name="senha">
                    <input type="text" placeholder="cpf" name="cpf">
                    <button type="submit" class="button" >Cadastrar</button>
                </form>
                <div class="signup">
                    <span class="signup">Ja tem uma conta ?
                        <label for="check">Login</label>
                    </span>
                </div>
            </div>

        </div>
        
    </body>
    <script src="js/carrinho.js"></script>
</html>
