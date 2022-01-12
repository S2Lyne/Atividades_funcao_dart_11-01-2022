import 'dart:io';

void main(List<String> args) {
  print('Digite seu nome:');
  String? nome = stdin.readLineSync()!;
  print('Digite o dia de nascimento:');
  int? dia = int.parse(stdin.readLineSync()!);
  print('Digite o número correspondente ao mês de nascimento:');
  int? mes = int.parse(stdin.readLineSync()!);
  print('Digite o ano de nascimento:');
  int? ano = int.parse(stdin.readLineSync()!);

  final resultado = idadeAtual(nome, dia, mes, ano);
  print(resultado);
}

String idadeAtual(String nome, int dia, int mes, int ano) {
  
  var dataNascimento = DateTime(ano, mes, dia);
  var dataAtual = DateTime.now();
  var idAtual = dataAtual.year - dataNascimento.year;
  if (dataAtual.month < dataNascimento.month) {
    idAtual -= 1;
  } else {
    idAtual = idAtual;
  }

  if (idAtual >= 18) {
    return ' Nome: $nome \n Idade: $idAtual \n Pode dirigir!';
  } else {
    return ' Nome: $nome \n Idade: $idAtual \n Não pode dirigir!';
  }
}
