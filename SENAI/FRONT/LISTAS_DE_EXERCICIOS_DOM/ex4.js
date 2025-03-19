document.getElementById("formularioRegistro").addEventListener("input", function(event) {
    validarFormulario();
});

function validarFormulario() {
    // Validação do nome
    var nome = document.getElementById("nome").value;
    var erroNome = document.getElementById("erroNome");
    if (nome === "") {
        erroNome.style.display = "inline";
    } else {
        erroNome.style.display = "none";
    }

    // Validação do email
    var email = document.getElementById("email").value;
    var erroEmail = document.getElementById("erroEmail");
    var regexEmail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!regexEmail.test(email)) {
        erroEmail.style.display = "inline";
    } else {
        erroEmail.style.display = "none";
    }

    // Validação da senha
    var senha = document.getElementById("senha").value;
    var erroSenha = document.getElementById("erroSenha");
    if (senha.length < 6) {
        erroSenha.style.display = "inline";
    } else {
        erroSenha.style.display = "none";
    }
}