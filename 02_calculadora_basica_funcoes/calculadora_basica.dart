import 'dart:io';

void main(List<String> args) {
  print(
      ' Digite: \n 1 para Adição \n 2 para subtração \n 3 para divisão \n 4 para multiplicação.');
  int? operacao = int.parse(stdin.readLineSync()!);

  print('Digite o primeiro número:');
  double? num1 = double.parse(stdin.readLineSync()!);
  print('Digite o segundo número:');
  double? num2 = double.parse(stdin.readLineSync()!);

  double resultado = calculo(num1, operacao, num2);

  String mens = mensagem(resultado, num1, num2, operacao);
  print(mens);
}

double calculo(double num1, int operacao, double num2) {
  String op = '';
  switch (operacao) {
    case 1:
      op = ' + ';
      return adicao(num1, num2);

    case 2:
      op = ' - ';
      return subtracao(num1, num2);

    case 3:
      return divisao(num1, num2);

    default:
      return multi(num1, num2);
  }
}

double adicao(double num1, double num2) {
  return num1 + num2;
}

double subtracao(double num1, double num2) {
  return num1 - num2;
}

double divisao(double num1, double num2) {
  return num1 / num2;
}

double multi(double num1, double num2) {
  return num1 * num2;
}

String mensagem(double resultado, double num1, double num2, int operacao) {
  switch (operacao) {
    case 1:
      return 'Resultado de ' +
          num1.toStringAsFixed(2) +
          ' + ' +
          num2.toStringAsFixed(2) +
          ' = ' +
          resultado.toStringAsFixed(2);

    case 2:
      return 'Resultado de ' +
          num1.toStringAsFixed(2) +
          ' - ' +
          num2.toStringAsFixed(2) +
          ' = ' +
          resultado.toStringAsFixed(2);

    case 3:
      return 'Resultado de ' +
          num1.toStringAsFixed(2) +
          ' / ' +
          num2.toStringAsFixed(2) +
          ' = ' +
          resultado.toStringAsFixed(2);

    case 4:
      return 'Resultado de ' +
          num1.toStringAsFixed(2) +
          ' * ' +
          num2.toStringAsFixed(2) +
          ' = ' +
          resultado.toStringAsFixed(2);

    default:
      return 'Operação inválida';
  }
}
