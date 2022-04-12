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
        // Items na mesma linha Horizontal (conteudo, conteudo)
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Center(
              child: Text(
                'Coluna 1',
                style: TextStyle(
                  color: Color.fromARGB(255, 16, 38, 234),
                  fontSize: 20,
                ),
              ),
            ),
            Center(
              child: Text(
                'Coluna 2',
                style: TextStyle(
                  color: Color.fromARGB(255, 16, 38, 234),
                  fontSize: 20,
                ),
              ),
            ),
            Center(
              child: Text(
                'Coluna 3',
                style: TextStyle(
                  color: Color.fromARGB(255, 16, 38, 234),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
