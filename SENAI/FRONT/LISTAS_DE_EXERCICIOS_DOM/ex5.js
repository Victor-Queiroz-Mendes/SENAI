document.getElementById("botaoAdicionar").addEventListener("click", adicionarTarefa);
document.getElementById("meuInput").addEventListener("keypress", function(event) {
    if (event.key === "Enter") {
        adicionarTarefa();
    }
});

function adicionarTarefa() {
    var input = document.getElementById("meuInput");
    var texto = input.value;

    if (texto !== "") {
        var novoItem = document.createElement("li");
        novoItem.innerText = texto;

        var botaoRemover = document.createElement("button");
        botaoRemover.innerText = "Remover";
        botaoRemover.addEventListener("click", function() {
            novoItem.remove();
        });

        novoItem.appendChild(botaoRemover);
        document.getElementById("minhaLista").appendChild(novoItem);
        input.value = "";
    }
}