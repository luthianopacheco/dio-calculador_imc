import 'package:imc_calculator_dio/functions/calculo_imc_function.dart';

import 'models/pessoa.dart';
import 'utils/console_utils.dart';

void execute() {
  print("\n------------------------------------------------\n");
  print('Calculadora de IMC!');
  var pessoa = Pessoa(ConsoleUtils.lerNomeComTexto("\nDigite seu nome: "));

  print('\n------------------------------------------------\n');
  print('Bem-vindo ${pessoa.getNome()}');

  pessoa.setPeso(ConsoleUtils.lerNumeroComTexto('Digite seu peso em KG: '));

  pessoa.setAltura(
      ConsoleUtils.lerNumeroComTexto('Digite sua altura em metros: '));

  print('\n------------------------------------------------\n');

  var imc = CalculoIMC(pessoa.getPeso(), pessoa.getAltura());

  print('Resultado do cálculo: ');
  print('IMC: ${imc.calculoIMC()}');
  print('Classificação: ${imc.classificacaoIMC()}');
  print('');
}
