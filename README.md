# firebase_aula

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Etapa 1: instalar as ferramentas de linha de comando necessárias

Instale a CLI do Firebase, caso ainda não tenha feito isso.

Faça login no Firebase com sua Conta do Google executando o seguinte comando:

firebase login

Instale a CLI do FlutterFire executando o seguinte comando em qualquer diretório:

dart pub global activate flutterfire_cli

Etapa 2: configurar os apps para usar o Firebase

Use a CLI do FlutterFire para configurar seus apps do Flutter e se conectar ao Firebase.

No diretório do projeto do Flutter, execute o seguinte comando para iniciar o fluxo de trabalho de configuração do app:

flutterfire configure

Etapa 3: inicializar o Firebase no app

No diretório do projeto do Flutter, execute o seguinte comando para instalar o plug-in principal:

flutter pub add firebase_core

No diretório do projeto do Flutter, execute o seguinte comando para garantir que a configuração do app criado com o Flutter do Firebase esteja atualizada:

flutterfire configure

No arquivo lib/main.dart, importe o plug-in principal do Firebase e o arquivo de configuração gerado antes:

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Ainda no arquivo lib/main.dart, inicialize o Firebase usando o objeto DefaultFirebaseOptions exportado pelo arquivo de configuração:

await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

Recrie o aplicativo do Flutter:

    flutter run

