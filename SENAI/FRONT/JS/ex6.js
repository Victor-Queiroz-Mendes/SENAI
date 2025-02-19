let lado1 = 20
let lado2 = 15
let lado3 = 10

if (lado1 == lado2 && lado2 == lado3 ) {
    console.log("Triângulo Equilátero;")
} else if (lado1 == lado2 && lado3 != lado1 || lado2 == lado3 && lado1 != lado2) {
    console.log("Triângulo Isósceles;")
} else if (lado1 != lado2 && lado2 != lado3 && lado1 != lado3) {
    console.log("Triângulo Escaleno;")
}
