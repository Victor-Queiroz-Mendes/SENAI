import 'dart:io';

void main() {
  print("Me envie uma temperatura em Fahrenheit e eu irei covnverter para Celsius");
  print("Digite a temperatura:");
  double F = double.parse(stdin.readLineSync()!); 
  double resut = 5 / 9 * (F - 32);
  print("O valor em Celsius é: Cº$resut");
}