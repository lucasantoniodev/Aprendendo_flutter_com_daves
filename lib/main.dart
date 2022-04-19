import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class ContadorBloc {
  // Fluxo
  // Sink -  fluxo de entrada
  StreamController<int> valorSink = StreamController();

  // Stream - fluxo de saída
  Stream<int> get valorStream => valorSink.stream;

  ContadorBloc() {
    valorSink.add(0); // Valor base para começar
  }

  dispose() {
    valorSink.close(); // Encerrando o fluxo
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ContadorBloc bloc = ContadorBloc();
  String texto = 'BLoC State Management';
  

 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder<int>(
        stream: bloc.valorStream,
        builder: (context, snapshot) => Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(texto),
            ),
          ),
          body: GestureDetector(
            onTap: () {
              print('Clicou');
              // incrementaValor();
              print(snapshot.data);
              bloc.valorSink.add(snapshot.data! + 1);
            },
            child: Center(
              child: Text(
                snapshot.data.toString(),
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
