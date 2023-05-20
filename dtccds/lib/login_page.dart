import 'package:dtccds/dados/autenticacao_email_firebase.dart';
import 'package:dtccds/dados/autenticacao_email_helper.dart';
import 'package:flutter/material.dart';

import 'app_store.dart';
import 'form_login.dart';

class LoginPage extends StatelessWidget {
  final AutenticacaoEmail helper;
  final AppStore appStore;
  const LoginPage({super.key, required this.appStore, required this.helper});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(height: 100, width: 100, "imagens/logo.png"),
              FormLogin(
                appStore: appStore,
                helper: helper,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Ou",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/registrar');
                  },
                  child: Text("Registrar-se"))
            ],
          ),
        ],
      ),
    );
  }
}
