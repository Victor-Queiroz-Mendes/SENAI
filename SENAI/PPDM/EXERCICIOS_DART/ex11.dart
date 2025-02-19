import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int numeroSecreto = random.nextInt(50) + 1; 
  int palpite;

  print("Tente adivinhar o número secreto entre 1 e 50!");

  do {
    stdout.write("Digite seu palpite: ");
    palpite = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    if (palpite < 1 || palpite > 50) {
      print("Por favor, insira um número válido entre 1 e 50.");
    } else if (palpite > numeroSecreto) {
      print("Muito alto!");
    } else if (palpite < numeroSecreto) {
      print("Muito baixo!");
    }
  } while (palpite != numeroSecreto);

  print("Parabéns! Você acertou.");
}
