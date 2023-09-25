
import 'package:test/test.dart';
import 'package:imc_calculadora_v2_intellij/classe_pessoa.dart';
import 'package:imc_calculadora_v2_intellij/funcao_verificacao.dart';

void main() {
  test('Teste de cálculo do IMC', () {

    var pessoa = Pessoa('João', 1.80, 80.0);

    expect(pessoa.nome, 'João');
    expect(pessoa.altura, 1.80);
    expect(pessoa.peso, 80.0);

    var imc = pessoa.peso / (pessoa.altura * pessoa.altura);
    var imcArredondado = imc.toStringAsFixed(2);

    expect(imcArredondado, '24.69');
  });
}
//fim