import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Tela1(),
        '/tela2': (context) => const Tela2(),
        '/tela3': (context) => const Tela3(),
      },
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tela 1'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Tela 1'),
            onPressed: () => Navigator.pushNamed(context, '/tela2'),
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text('Tela 2'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Wrap(
           spacing: 10,
            children: [
              ElevatedButton(
                child: const Text('Tela 1'),
                onPressed: () => Navigator.pop(context),
              ),
              // const SizedBox(width: 40),
              ElevatedButton(
                child: const Text('Tela 3'),
                onPressed: () => Navigator.pushNamed(context,'/tela3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tela3 extends StatelessWidget {
  const Tela3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text('Tela 3'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Voltar para tela 2'),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
    );
  }
}
