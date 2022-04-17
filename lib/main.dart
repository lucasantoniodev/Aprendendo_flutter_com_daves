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
  bool? showPassword = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Página de login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // Esticando todos os elementos para ocupar toda a horizontal
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Insira seus dados', style: TextStyle(fontSize: 25)),
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Senha',           
                ),
                obscureText: showPassword!,
              ),
              Text('Esqueceu sua senha?'),
              ElevatedButton(
                  onPressed: () => setState(() {
                    showPassword = !showPassword!;
                  }), child: Text('Entrar'))
            ],
          ),
        ),
      ),
    );
  }
}
