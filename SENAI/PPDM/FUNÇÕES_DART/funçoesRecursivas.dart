void contarArteZero(int n){
  if (n < 0){
    return;
  }
  print(n);
  contarArteZero(n - 1);
}

  void main(){
    int numero = 5;
    contarArteZero(numero);
  }
