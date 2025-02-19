function executarOperacao(a, b, callback) {
    return callback(a, b);
}

function multiplicar(x, y) {
    return x * y;
}

console.log(executarOperacao(3, 4, multiplicar)); 
