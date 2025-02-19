import 'dart:io';

void main() {
  print("Digite sua idade:");
  double I = double.parse(stdin.readLineSync()!); 
  if (I < 12) {
    print("Criança");
  } else if (I >= 12 && I <= 17) {
    print("Adolescente");
    } else if (I >= 18 && I <= 59) {
      print("Adulto");
    } else if (I > 60) {
      print("Idoso");
    }
  }