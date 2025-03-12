document.getElementById("botaoToggle").addEventListener("click", function() {
    var elemento = document.getElementById("meuElemento");
    if (elemento.style.display === "none") {
        elemento.style.display = "block";
    } else {
        elemento.style.display = "none";
    }
});