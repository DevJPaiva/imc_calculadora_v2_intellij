import 'dart:io';
import 'package:imc_calculadora_v2_intellij/classe_pessoa.dart';
import 'package:imc_calculadora_v2_intellij/funcao_verificacao.dart';

//Programa principal;
void main(){

  String? nome = '';
  double altura = 0.0;
  double peso = 0.0;

  print('');
  print('Bem vindo ao calculo de IMC');
  print('');

  //Informações que o usuario fornece;
  while(nome == null || nome.isEmpty) {
    stdout.write('Qual seu nome? ');
    nome = stdin.readLineSync();
  }

  while (altura == null || altura <= 0) {
    stdout.write('Qual sua altura(m)? ');
    var alturaStr = stdin.readLineSync();
    try {
      altura = double.parse(alturaStr!);
      if (altura <= 0) {
        print('Altura deve ser um valor positivo!');
      }
    } catch (e) {
      print('Digite uma altura Válida! utilize ponto(.) ao invés de virgula(,)');
    }
  }

  while (peso == null || peso <= 0) {
    stdout.write('Qual seu peso(kg)? ');
    var pesoStr = stdin.readLineSync();
    try {
      peso = double.parse(pesoStr!);
      if (peso <= 0) {
        print('Peso deve ser um valor positivo!');
      }
    } catch (e) {
      print('Digite um peso Válido!');
    }
  }

  var pessoa = Pessoa(nome, altura, peso);


  //Calculo e resultado;
  var imc = pessoa.peso / (pessoa.altura * pessoa.altura);
  print('${pessoa.nome}, seu IMC é: ${imc.toStringAsFixed(2)}');

  //Função  que verifica IMC seguindo a tabela;
  verificaImc(imc);

  print('FIM');
}
