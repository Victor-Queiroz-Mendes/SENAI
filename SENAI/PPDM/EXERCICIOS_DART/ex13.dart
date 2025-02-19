List<int> ordenarLista(List<int> numeros) {
  numeros.sort();
  return numeros;
}

void main() {
  List<int> lista = [5, 2, 9, 1, 7, 3];
  print("Lista original: $lista");

  List<int> listaOrdenada = ordenarLista(List.from(lista)); // Evita modificar a lista original
  print("Lista ordenada: $listaOrdenada");
}
