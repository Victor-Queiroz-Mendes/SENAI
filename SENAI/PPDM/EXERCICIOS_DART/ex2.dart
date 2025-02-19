import 'dart:io';
void main() {
  print("Me envie os numeros que irei fazer o calculo da media aritmética para você!");
  print("Digite o primeiro número:");
  double input1 = double.parse(stdin.readLineSync()!); 

  print("Digite o segundo número:");
  double input2 = double.parse(stdin.readLineSync()!); 

  print("Digite o segundo número:");
  double input3 = double.parse(stdin.readLineSync()!); 

  double media = (input1 + input2 + input3) / 3;

  print("A média aritmética é: $media");
}