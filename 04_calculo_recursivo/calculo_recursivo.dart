import 'dart:io';

void main(List<String> args) {
  print('Digite um número inteiro: ');
  int? num1 = int.parse(stdin.readLineSync()!);

  final resposta = somaRecursiva(num1);
  print(resposta);
}

int somaRecursiva(int num1) {
  int count = 0;
  for (int i = 0; i <= num1; i++) {
    count = count + i;
  }
  return count;
}
