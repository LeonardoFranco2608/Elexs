<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/index.css">
        <script src="https://kit.fontawesome.com/4d815a01ff.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Elexs</title>

    </head>

    <body>
    <header class="header">


        <a href="./Home">
            <img class="logo" src="assets/logoelexs-recortado.png" alt="Logo">
        </a>
        


        <nav class="navbar">
            <button id="show-login"><a href="./ProdutosController">Produtos</a></button>
            <button id="show-sobre"><a href="#">Sobre</a></button>
            <button id="show-login"><a href="./login">Login</a></button>
            <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
        </nav>

    </header>
    <main>





        
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="cards-container">
                        <div class="card-image">
                            <img src="assets/steam.jpg" alt="" class="card-img">
                        </div>
                        <div class="card-image">
                            <img src="assets/xbox.jpg" alt="" class="card-img">
                        </div>
                        <div class="card-image">
                            <img src="assets/psn.jpg" alt="" class="card-img">
                        </div>
                        <div class="card-image">
                            <img src="assets/nintendo.jpg" alt="" class="card-img">
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="cards-container">
                        <div class="card-image">
                            <img src="assets/spot.jpg" alt="" class="card-img">
                        </div>
                        <div class="card-image">
                            <img src="assets/ifood.jpg" alt="" class="card-img">
                        </div>
                        <div class="card-image">
                            <img src="assets/googleplay.jpg" alt="" class="card-img">
                        </div>
                        <div class="card-image">
                            <img src="assets/crun.jpg" alt="" class="card-img">
                        </div>
                    </div>
                </div>

            </div>
            <a class="carousel-control-prev" id="controls" href="#carouselExampleControls" role="button"
               data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" id="controls" href="#carouselExampleControls" role="button"
               data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        

        <div class="center">

        </div>


        <div class="popup-s">

            <div class="close-btn">&times;</div>

            <div class="form">

                <h2>Sobre Nós</h2>
                <h6>Somos uma loja focada em cards, com preços acessíveis e com facilidade na hora da compra, uma compra simples e mais rápida nas nuvens!</h6>
                <h6>Um agradecimento aos colaboradores desse projeto: Less, MegaMart, DV, Massarim, Evelin Verissimo, EliteTech</h6>
                

            </div>

        </div>


    </main>
    <footer>

    </footer>
    <script src="js/sobre.js" type="text/javascript"></script>
    <script src="js/login.js" type="text/javascript"></script>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
crossorigin="anonymous"></script>

</html>