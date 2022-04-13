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
      theme: ThemeData(
        // Definindo um tema padrão para todo seu projeto
        primarySwatch: Colors.red, // Cor do tema

        fontFamily: 'Nasalization-rg', // Font do tema

        brightness: Brightness.light, // Brilho de fundo

        primaryColor: Colors.blue,

        appBarTheme: const AppBarTheme(
          // Propriedade para personalizar o padrão do tema

          backgroundColor: Colors.yellow,
        ),

      ),
      home: Scaffold(
        // backgroundColor: Colors.indigoAccent, // Cor de fundo do scaffold
        
        appBar: AppBar(title: const Text('Aplicativo'),
        
        backgroundColor: Colors.green,

        ),
      ),
    );

    //
  }
}
