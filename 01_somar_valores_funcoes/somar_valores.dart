import 'dart:io';

void main(List<String> args) {
  final resultado = soma();
}

void soma() {
  print('Digite o primeiro valor: ');
  double? valor1 = double.parse(stdin.readLineSync()!);
  print('Digite o segundo valor: ');
  double? valor2 = double.parse(stdin.readLineSync()!);
  double resp = valor1 + valor2;
  print('Resultado: $resp ' );
}
