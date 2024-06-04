<!DOCTYPE html>

<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <script src="https://kit.fontawesome.com/4d815a01ff.js" crossorigin="anonymous"></script>
        <title>Login - Elexs</title>
        <link rel="stylesheet" href="styles/login.css">
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
</html>
