import 'package:test/test.dart';
import 'dart:io';

import 'package:imc_calculadora_v2_intellij/funcao_verificacao.dart';

void main() {
  test('Teste de classificação do IMC (Magreza grave)', () {
    final expectedOutput = 'Você está em Magreza grave\n';
    final actualOutput = capturePrint(() {
      verificaImc(15.9);
    }).toLowerCase(); // Converte a saída real para minúsculas

    expect(actualOutput, contains(expectedOutput.toLowerCase()));
  });

  // Adicione mais testes para outras classificações do IMC conforme necessário
}

String capturePrint(void Function() testFn) {
  final originalOut = stdout;
  final buffer = StringBuffer();
  stdout = IOSink(buffer);
  try {
    testFn();
    return buffer.toString();
  } finally {
    stdout = originalOut;
  }
}
