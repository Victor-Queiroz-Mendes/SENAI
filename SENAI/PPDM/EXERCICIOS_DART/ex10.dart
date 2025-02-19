import 'dart:io';

void main() {
  stdout.write("Digite um número inteiro N: ");
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (n == null || n <= 0) {
    print("Por favor, insira um número inteiro válido maior que zero.");
    return;
  }

  List<int> pares = [];
  List<int> impares = [];

  for (int i = 1; i <= n; i++) {
    if (i % 2 == 0) {
      pares.add(i);
    } else {
      impares.add(i);
    }
  }

  print("Pares: ${pares.join(', ')}");
  print("Ímpares: ${impares.join(', ')}");
}
