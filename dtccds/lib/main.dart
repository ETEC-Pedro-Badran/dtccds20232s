import 'package:dtccds/app_store.dart';
import 'package:dtccds/dados/autenticacao_email_firebase.dart';
import 'package:dtccds/dados/autenticacao_email_helper.dart';
import 'package:dtccds/login_page.dart';
import 'package:dtccds/registro_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppStore appStore = AppStore();
    AutenticacaoEmail helper =  AutenticacaoEmailFirebase();
    return MaterialApp(
      title: 'DTCC 2023 2s',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      
      initialRoute: "/",
      routes: {
        "/": (context)=>LoginPage(appStore: appStore, helper: helper,),
        "/registrar": (context)=>RegistroPage(helper: helper)
      },
    );
  }
}



