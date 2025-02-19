import 'dart:io';

void main() {
  stdout.write("Digite uma frase: ");
  String frase = stdin.readLineSync() ?? '';

  List<String> palavras = frase.trim().split(RegExp(r'\s+'));

  print("A frase contém ${palavras.length} palavras.");
}
