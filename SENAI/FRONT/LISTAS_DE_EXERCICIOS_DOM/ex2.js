let contador = 0;

document.getElementById("incrementar").addEventListener("click", function() {
    contador++;
    document.getElementById("contador").innerText = contador;
});

document.getElementById("decrementar").addEventListener("click", function() {
    contador--;
    document.getElementById("contador").innerText = contador;
});