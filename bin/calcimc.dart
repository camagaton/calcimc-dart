import 'package:calcimc/classes/Pessoa.dart';
import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
   
  var pessoa = Pessoa();
  print('Digite o seu nome: ');
  var line = stdin.readLineSync(encoding: utf8);
  pessoa.setNome(line ?? '');
  print('Digite a sua altura: ');
  line = stdin.readLineSync(encoding: utf8);
  pessoa.setAltura(double.parse(line ?? '0'));
  print('Digite o seu peso: ');
  line = stdin.readLineSync(encoding: utf8);
  pessoa.setPeso(double.parse(line ?? '0'));
  
  var imc = pessoa.calculaIMC(pessoa.getPeso(), pessoa.getAltura());

  print('${pessoa.getNome()}o seu IMC é ${imc.toStringAsFixed(2)}');
  pessoa.verificarICM(imc);
}