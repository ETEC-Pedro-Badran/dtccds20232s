import 'package:flutter/material.dart';


import 'dados/autenticacao_email_helper.dart';
import 'form_registro.dart';

class RegistroPage extends StatelessWidget {
  final AutenticacaoEmail helper;
  const RegistroPage({super.key, required this.helper});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormRegistro(helper: helper,),
      appBar: AppBar(
        title: Text('Registro'),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
