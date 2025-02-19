let N = parseInt(prompt("Digite um número inteiro N:"));


let pares = [];
let impares = [];

for (let i = 1; i <= N; i++) {
    if (i % 2 === 0) {
        pares.push(i);
    } else {
        impares.push(i);
    }
}

console.log(`Pares: ${pares.join(", ")}`);
console.log(`Ímpares: ${impares.join(", ")}`);
    