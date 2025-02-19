import 'dart:io';
void main() {
  print("Me envie a altura e o raio do cilindo e receba o volume!");
  print("Digite a altura:");
  double input1 = double.parse(stdin.readLineSync()!); 

   print("Digite o raio:");
  double input2 = double.parse(stdin.readLineSync()!);

  double pi = 3.14;

  double volume = pi * (input2 * input2) * input1;
  
  print("O volume do cilindro é: ${volume.toStringAsFixed(2)}.");
}
