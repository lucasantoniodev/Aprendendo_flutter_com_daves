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
    /*
    List<String> listaProdutos = [];
    for (int i = 1; i <= 20; i++) {
      listaProdutos.add('Produto $i');
    }*/
    List listaProdutos = List.generate(21, (index) => 'Produto $index');

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: ListView.builder(
          reverse:
              true, // Inverte a posição da lista, exemplo de postagens novas do twitter o índice continua igual para o produto
          itemCount: listaProdutos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listaProdutos[index]),
              onTap: () {
                print(
                    'O produto selecionado foi ${listaProdutos[index]}, na posição $index');
              },
            );
          },
        ),
      ),
    );
  }
}
