import 'dart:io';
import 'dart:math';

void main(){
  print("Este programa calcula a Hipotenusa");
  print("Digite o valor do lado 1:");
  double primeiro = double.parse(stdin.readLineSync()!); 
  print("Digite o valor do lado 2:");
  double segundo = double.parse(stdin.readLineSync()!); 
  
  double result = sqrt(pow(primeiro, 2) + pow(segundo, 2));
  print("O resultado é de: $result");
}






