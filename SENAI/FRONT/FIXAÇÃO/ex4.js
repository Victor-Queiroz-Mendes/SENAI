
document.getElementById("botaoCor").addEventListener("click", function() {
    document.getElementById("meuQuadrado").style.backgroundColor = "blue";
});

document.getElementById("botaoTamanho").addEventListener("click", function() {
    document.getElementById("meuQuadrado").style.width = "200px";
    document.getElementById("meuQuadrado").style.height = "200px";
});

document.getElementById("botaoBorda").addEventListener("click", function() {
    document.getElementById("meuQuadrado").style.border = "5px dashed green";
});