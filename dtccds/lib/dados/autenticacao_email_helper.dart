abstract class AutenticacaoEmail {

  Future<void> registrar(String email, String senha);
  Future<void> autenticar(String email, String senha);
  Future<void> recuperarSenha();
  bool estaIdentificado();
}