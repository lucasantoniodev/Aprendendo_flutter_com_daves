import 'dart:async';

void main() {
  print(1);
  print(2);
  print(3);

  // Classe<Tipo do retorno> Nome da função = Classe.método;
  // Variável assíncrona, aguarda 3 segundos para depois executar.
  Future<void> quatro = Future.delayed(
    const Duration(seconds: 3),
  );
  // Executando a variável pelo método then
  quatro.then((value) => print(4));

  print(5);
}
