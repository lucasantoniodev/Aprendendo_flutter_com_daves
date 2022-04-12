import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplicativo exemplo Scaffold'),
        ),
        body: const Center(
          child: Text(
            'Meu aplicativo',
            style: TextStyle(color: Colors.indigoAccent),
          ),
        ),
      ),
    );
  }
}
