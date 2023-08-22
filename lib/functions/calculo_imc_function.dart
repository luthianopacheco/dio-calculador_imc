import 'dart:math';

class CalculoIMC {
  double peso = 0;
  double altura = 0;
  CalculoIMC(this.peso, this.altura);

  String calculoIMC() {
    var imc = peso / pow(altura, 2);
    return imc.toStringAsFixed(2);
  }

  String classificacaoIMC() {
    double imc = double.parse(calculoIMC());

    if (imc < 16) {
      return 'Magreza grave';
    } else if (imc < 17) {
      return 'Magreza moderada';
    } else if (imc < 18.5) {
      return 'Magreza leve';
    } else if (imc < 25) {
      return 'Saudável';
    } else if (imc < 30) {
      return 'Sobrepeso';
    } else if (imc < 35) {
      return 'Obesidade Grau I';
    } else if (imc < 40) {
      return 'Obesidade Grau II (severa)';
    } else if (imc >= 40) {
      return 'Obesidade Grau III (mórbida)';
    } else {
      return 'IMC Inválido';
    }
  }
}
