import 'dart:convert';
import 'dart:io';
import 'package:imc_calculator_dio/exception/number_exception.dart';

import '../exception/nome_exception.dart';

class ConsoleUtils {
  static String lerConsole() {
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  static String lerNomeComTexto(String texto) {
    print(texto);

    try {
      var nome = lerConsole();
      if (nome.trim() == '' || nome.contains(RegExp('[0-9]'))) {
        throw NomeException();
      } else {
        return nome;
      }
    } catch (e) {
      print(e);
      exit(0);
    }
  }

  static double lerNumeroComTexto(String texto) {
    print(texto);

    try {
      var numero = lerConsole();
      if (numero.trim() == '' || numero.contains(RegExp('[a-z,A-Z]'))) {
        throw NumberException();
      } else {
        return double.parse(numero.replaceAll(',', '.'));
      }
    } catch (e) {
      print(e);
      exit(0);
    }
  }
}
