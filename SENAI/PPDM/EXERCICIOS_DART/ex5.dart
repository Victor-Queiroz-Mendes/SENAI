import 'dart:io';

void main() {
  print("Me envie o valor e irei verificar se é par ou impar");
  print("Digite o nùmero:");
  double N = double.parse(stdin.readLineSync()!); 
  if (N % 2 == 0) {
    print("seu numero é par");
  }
  else {
    print("seu numero é impar");
  }
}