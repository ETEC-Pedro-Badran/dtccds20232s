import 'package:dtccds/dados/autenticacao_email_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
class AutenticacaoEmailFirebase extends AutenticacaoEmail {

  

  @override
  autenticar(String email,String  senha) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: senha);
  }

  


  @override
  recuperarSenha() {
    // TODO: implement recuperarSenha
    throw UnimplementedError();
  }

  @override
  registrar(String email,String  senha) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: senha);
  }
  
  @override
  bool estaIdentificado() {
    return  FirebaseAuth.instance.currentUser!=null;
  }

}