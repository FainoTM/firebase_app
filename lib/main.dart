import 'package:firebase_aula/appRoutes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'homePage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); //inicializa toda a pré estrutura necessária para funcionamento de apps de terceiros no caso firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.login,
    routes: AppRoutes.define(),
  ));
}

