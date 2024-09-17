import 'package:firebase_aula/components/webView.dart';
import 'package:firebase_aula/homePage.dart';
import 'package:firebase_aula/pages/cadastroPessoa.dart';
import 'package:firebase_aula/pages/forgotPage.dart';
import 'package:firebase_aula/pages/listarPessoa.dart';
import 'package:firebase_aula/pages/login.dart';
import 'package:firebase_aula/pages/signUpPage.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes{
  static const homePage = '/homePage';
  static const cadastrarPessoa = '/pages/cadastroPessoa';
  static const listarPessoa = '/pages/listarPessoa';
  static const login = '/pages/login';
  static const signUp = '/pages/signUpPage';
  static const forgotPage = '/pages/forgotPage';
  static const webPage = '/components/webView';


  static Map<String, WidgetBuilder> define() {
    return {
      homePage: (BuildContext context) => const HomePage(),
      cadastrarPessoa: (BuildContext context) => const CadastroPessoa(),
      listarPessoa: (BuildContext context) => const ListarPessoas(),
      login: (BuildContext context) => const LoginPage(),
      signUp: (BuildContext context) => const SignUpPage(),
      forgotPage: (BuildContext context) => ForgotPage(),
      webPage: (BuildContext context) => WebPage(),
    };
  }
}