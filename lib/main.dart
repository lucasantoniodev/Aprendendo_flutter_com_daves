import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // Provedor dinámico
    ChangeNotifierProvider(
        create: (context) => Pessoa(22, 'Teco'), child: MyApp()),
  );
}

// Classe com o modelo dos dados e com características da classe dinámica ChangeNotifier
class Pessoa with ChangeNotifier {
  String nome = 'João';
  int idade = 30;

  Pessoa(this.idade, this.nome);

  void incrementAge() {
    this.idade++;
    notifyListeners();
  }
}

// Utilizar um provoder permite que uma classe Stateless que não tem alterações passe a ter já que o está está sendo gerenciado pelo provider.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Widget responsável por facilitar o consumo do provider, sem precisar escrever tanto para acessar os parâmetros
        home: Consumer<Pessoa>(
      builder: (context, pessoa, child) => Scaffold(
        appBar: AppBar(title: Text('Exemplo Provider')),
        body: Center(
          child: Text(
            // Consumer      // Modelo antigo, sem Consumer
            '${pessoa.nome} tem ${context.select((Pessoa p) => p.idade)} anos de idade',
            style: TextStyle(fontSize: 30),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => pessoa.incrementAge(),
          // Antigo: Provider.of<Pessoa>(context, listen: false).incrementAge()),
        ),
      ),
    ));
  }
}
