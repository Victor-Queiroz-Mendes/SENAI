import 'dart:io'; 
  void main() {
  print("Digite o número para eu calcular o dobro para você!");
   print("Digite o primeiro número:");
   double input1 = double.parse(stdin.readLineSync()!); 
    double dobro = input1 + input1;
  print("O dobro do $input1 é: $dobro");
  }