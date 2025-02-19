import 'dart:io';

void main() {
  print("Digite seu peso:");
  double peso = double.parse(stdin.readLineSync()!); 
  print("Digite sua altura (ex: 1.70):");
  double altura = double.parse(stdin.readLineSync()!); 
  double result = peso / (altura * altura);

  print("Você esta: $result");

    if (result < 18.5) {
    print("Abaixo do peso");
  } else if (result >= 18.5 && result <= 24.9) {
    print("Peso normal");
    } else if (result >= 25 && result <= 29.9) {
      print("Sobrepeso");
    } else if (result > 30) {
      print("Obesidade");
    }
  }
  