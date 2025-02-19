let frase = prompt("Digite uma frase:");

let palavras = frase.trim().split(/\s+/);

console.log(`A frase contém ${palavras.length} palavras.`);
