import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Tela1(),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tela 1'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Tela 1'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const Tela2()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text('Tela 2'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Tela 2'),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}
