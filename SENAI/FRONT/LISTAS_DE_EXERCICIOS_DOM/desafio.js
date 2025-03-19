document.getElementById("botaoTema").addEventListener("click", function() {
    var body = document.body;
    var botao = document.getElementById("botaoTema");

    body.classList.toggle("escuro");
    body.classList.toggle("claro");

    if (body.classList.contains("escuro")) {
        botao.innerText = "Modo Claro";
    } else {
        botao.innerText = "Modo Escuro";
    }
});