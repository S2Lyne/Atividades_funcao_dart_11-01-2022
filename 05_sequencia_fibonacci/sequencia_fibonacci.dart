import 'dart:io';

void main(List<String> args) {
  print('Digite um número: ');
  int? num1 = int.parse(stdin.readLineSync()!);

  List sqFibonacci = fibonacci(num1);
  print(sqFibonacci);
}

List fibonacci(int num1) {
  List sequenciaFibonacci = [];
  int count1 = 0;
  int count2 = 0;
  int fN = 0;
  if (sequenciaFibonacci.length < num1) {

    for (int i = 0; i <= num1 ; i++) {
      if (count1 == 0 || count1 == 1) {
        fN = 1;
        sequenciaFibonacci.add(fN);
        count1++;
      } else if((count2 + fN) < num1){
        count2 = fN;
        fN = count1;
        sequenciaFibonacci.add(fN);
        count1 = count2 + fN;
      }
    }
  } else {
    return sequenciaFibonacci;
  }
  return sequenciaFibonacci;
}
