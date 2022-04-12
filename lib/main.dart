import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(nome: 'Tecão'));
}

/// Stateful widget tem 2 objetos:
/// 1 - Widget: Responsável por criar o objeto de estado <state> e guardar dados não mutáveis
/// 2 - Objeto de estado <state>: Responsável por criar o widget com método build e mostrar as variáveis mutáveis e não mutáveis.
class MyApp extends StatefulWidget {
  final String? nome;

  const MyApp({Key? key, this.nome}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salario = 7000;

  void aumentaSalario(int valor) {
    setState(() => salario += valor);
  }

  void diminuiSalario(int valor) {
    setState(() => salario -= valor);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: GestureDetector(
            onTap: () {
              // ignore: avoid_print
              print('Clicou');
              // ignore: avoid_print
              print('Novo salario: $salario');
              aumentaSalario(200);
            },
            onDoubleTap: () => diminuiSalario(200),
            child: Text('O salário de ${widget.nome} é $salario')),
      )),
    );
  }
}
