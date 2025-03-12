document.getElementById("botaoAdicionar").addEventListener("click", function() {
    var input = document.getElementById("meuInput");
    var texto = input.value;

    if (texto !== "") {
        var novoItem = document.createElement("li");
        novoItem.innerText = texto;
        document.getElementById("minhaLista").appendChild(novoItem);
        input.value = "";
    }
})
