import 'package:test/test.dart';
import 'package:imc_calculator_dio/functions/calculo_imc_function.dart';

void main() {
  var imc1 = CalculoIMC(85, 1.83);
  var imc2 = CalculoIMC(60, 1.75);
  var imc3 = CalculoIMC(45, 1.91);
  var imc4 = CalculoIMC(55, 1.79);
  var imc5 = CalculoIMC(49, 1.70);
  var imc6 = CalculoIMC(81, 1.62);
  var imc7 = CalculoIMC(123, 1.57);
  var imc8 = CalculoIMC(112, 1.68);

  test('Teste Valor 1: Calcula o valor do IMC', () {
    expect(imc1.calculoIMC(), equals('25.38'));
  });

  test('Teste Valor 1: Calcula a classificação do IMC', () {
    expect(imc1.classificacaoIMC(), equals('Sobrepeso'));
  });

//----------------------------------------------------------------------------------------

  test('Teste Valor 2: Calcula o valor do IMC', () {
    expect(imc2.calculoIMC(), equals('19.59'));
  });

  test('Teste Valor 2: Calcula a classificação do IMC', () {
    expect(imc2.classificacaoIMC(), equals('Saudável'));
  });

  //----------------------------------------------------------------------------------------

  test('Teste Valor 3: Calcula o valor do IMC', () {
    expect(imc3.calculoIMC(), equals('12.34'));
  });

  test('Teste Valor 3: Calcula a classificação do IMC', () {
    expect(imc3.classificacaoIMC(), equals('Magreza grave'));
  });

  //----------------------------------------------------------------------------------------

  test('Teste Valor 4: Calcula o valor do IMC', () {
    expect(imc4.calculoIMC(), equals('17.17'));
  });

  test('Teste Valor 4: Calcula a classificação do IMC', () {
    expect(imc4.classificacaoIMC(), equals('Magreza leve'));
  });

  //----------------------------------------------------------------------------------------

  test('Teste Valor 5: Calcula o valor do IMC', () {
    expect(imc5.calculoIMC(), equals('16.96'));
  });

  test('Teste Valor 5: Calcula a classificação do IMC', () {
    expect(imc5.classificacaoIMC(), equals('Magreza moderada'));
  });

  //----------------------------------------------------------------------------------------

  test('Teste Valor 6: Calcula o valor do IMC', () {
    expect(imc6.calculoIMC(), equals('30.86'));
  });

  test('Teste Valor 6: Calcula a classificação do IMC', () {
    expect(imc6.classificacaoIMC(), equals('Obesidade Grau I'));
  });

  //----------------------------------------------------------------------------------------

  test('Teste Valor 7: Calcula o valor do IMC', () {
    expect(imc7.calculoIMC(), equals('49.90'));
  });

  test('Teste Valor 7: Calcula a classificação do IMC', () {
    expect(imc7.classificacaoIMC(), equals('Obesidade Grau III (mórbida)'));
  });

  //----------------------------------------------------------------------------------------

  test('Teste Valor 8: Calcula o valor do IMC', () {
    expect(imc8.calculoIMC(), equals('39.68'));
  });

  test('Teste Valor 8: Calcula a classificação do IMC', () {
    expect(imc8.classificacaoIMC(), equals('Obesidade Grau II (severa)'));
  });
}
