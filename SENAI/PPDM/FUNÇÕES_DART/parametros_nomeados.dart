void main(){
  int soma({required int num1,required int num2 }){
    return num1 + num2;
  }

int result = soma(num1: 5, num2: 5);
print('Resultado da soma é: $result');
}