document.querySelector("#show-sobre").addEventListener("click", function(){
    document.querySelector(".popup-s").classList.add("active");
    });
    document.querySelector(".popup-s .close-btn").addEventListener("click", function(){ 
        document.querySelector(".popup-s").classList.remove("active");
    });