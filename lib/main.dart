// ignore_for_file: invalid_return_type_for_catch_error

import 'dart:async';
import 'package:http/http.dart' as http;

Future<void> main() async {
  // SITE + PÁGINA + PARÂMETROS
  final uriComRetorno404 = Uri.https(
      'www.example.com', '/api', {'q': 'flutter', 'parametro2': 'valor'});
  print(uriComRetorno404);

  final uri = Uri.https('www.example.com', '');
  final future = http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
      print('Página carregada com sucesso!');
      print(response.body); // Código fonte HTML  da página
    } else if (response.statusCode == 301) {
      print('Página movida permanentemente');
    } else if (response.statusCode == 404) {
      print('Página não encontrada');
    } else if (response.statusCode == 500) {
      print('Erro interno no servidor');
    }
  });

  future.catchError((onError) => print('Erro!'));
  // Quando terminar a requisição
  future.whenComplete(() => print('Future completo!'));
}
