import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Pessoa(22, 'Teco'), child: MyApp()),
  );
}

class Pessoa with ChangeNotifier {
  String nome = 'João';
  int idade = 30;

  Pessoa(this.idade, this.nome);

  void incrementAge() {
    this.idade++;
    notifyListeners();
  }
}


// Utilizar um provoder permite que uma classe Statelesse que não tem alterações passe a ter já que o está está sendo gerenciado pelo provider.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Exemplo Provider')),
        body: Center(
            child: Text(
          '${context.select((Pessoa p) => p.nome)} tem ${context.select((Pessoa p) => p.idade)} anos de idade',
          style: TextStyle(fontSize: 30),
        )),
        floatingActionButton: FloatingActionButton(
            onPressed: () =>
                Provider.of<Pessoa>(context, listen: false).incrementAge()),
      ),
    );
  }
}
