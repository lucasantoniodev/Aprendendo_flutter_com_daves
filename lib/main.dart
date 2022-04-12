import 'package:flutter/material.dart';

void main() {
  /* 
   * runApp - é responsável por executar a aplicação
   * runApp - vai rodar um widget/application
   */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplicativo olá mundo'),
        ),
        body: const Center(
          child: Text(
            'Olá mundãoo!!',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
      ),
    );
  }
}