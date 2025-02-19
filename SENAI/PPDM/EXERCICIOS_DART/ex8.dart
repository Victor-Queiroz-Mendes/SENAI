import 'dart:io';

void main(){
  print("Digite o valor do lado 1:");
  double primeiro = double.parse(stdin.readLineSync()!); 
  print("Digite o valor do lado 2:");
  double segundo = double.parse(stdin.readLineSync()!); 
  print("Digite o valor do lado 3:");
  double terceiro = double.parse(stdin.readLineSync()!); 

  if (primeiro == segundo && segundo == terceiro ) {
    print("Triângulo Equilátero;");
} else if (primeiro == segundo && terceiro != primeiro || segundo == terceiro && primeiro != segundo) {
    print("Triângulo Isósceles;");
} else if (primeiro != segundo && segundo != terceiro && primeiro != terceiro) {
    print("Triângulo Escaleno;");
}
}
