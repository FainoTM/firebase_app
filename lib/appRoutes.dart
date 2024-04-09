import 'package:firebase_aula/homePage.dart';
import 'package:firebase_aula/pages/cadastroPessoa.dart';
import 'package:firebase_aula/pages/listarPessoa.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes{
  static const homePage = '/homePage';
  static const cadastrarPessoa = '/pages/cadastroPessoa';
  static const listarPessoa = '/pages/listarPessoa';

  static Map<String, WidgetBuilder> define() {
    return {
      homePage: (BuildContext context) => const HomePage(),
      cadastrarPessoa: (BuildContext context) => const CadastroPessoa(),
      listarPessoa: (BuildContext context) => const ListarPessoas(),
    };
  }
}