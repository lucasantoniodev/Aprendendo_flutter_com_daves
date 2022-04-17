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
  List<String> listaProdutos = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 1; i <= 100; i++) {
      listaProdutos.add('Produto $i');
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: ListView.builder(
          itemCount: listaProdutos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listaProdutos[index]),
            );
          },
        ),
      ),
    );
  }
}
