import 'package:flutter/material.dart';
import 'package:flutter_application/page/home_page.dart';
import 'package:flutter_application/page/profile.dart';
import 'package:flutter_application/page/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType
              .fixed, // Quando tem mais de 3 elementos é necessário usar
          currentIndex: _opcaoSelecionada,
          onTap: (int option) => setState(() {
            _opcaoSelecionada = option;
          }),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Página inicial'),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Pesquisa'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          ],
        ),
        appBar: AppBar(
          title: Text('Aplicativo exemplo BottomNavigatorBar'),
        ),
        body: IndexedStack(
          index: _opcaoSelecionada,
          children: [
            HomePage(),
            Search(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
