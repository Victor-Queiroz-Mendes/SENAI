import 'dart:io';

void main() {
  List<int> numeros = [10, 20, 30, 40, 50, 60, 70, 80];

  stdout.write("Digite um número: ");
  int? numero = int.tryParse(stdin.readLineSync() ?? '');

  if (numero == null) {
    print("Por favor, insira um número válido.");
    return;
  }

  if (numeros.contains(numero)) {
    int posicao = numeros.indexOf(numero);
    print("O número $numero está na lista na posição $posicao.");
  } else {
    print("O número $numero não está na lista.");
  }
}
