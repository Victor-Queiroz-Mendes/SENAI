int multiplicar(int a, int b) => a * b;

void executarOperacao(int x, int y, int Function(int, int) operacao) {
  int resultado = operacao(x, y);
  print("O resultado da operação é: $resultado");
}
void main() {
  executarOperacao(3, 4, multiplicar);
}
