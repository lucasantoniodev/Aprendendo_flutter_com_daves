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
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.attach_money, color: Colors.red,),
                  title: Text('Menu Lateral'),
                  subtitle: Text('Selecione a opção nº 1'),
                  onTap: () => print('Clicou'),
                ),
                 ListTile(
                  leading: Icon(Icons.edit, color: Colors.blue,),
                  title: Text('Editar cadastro'),
                  subtitle: Text('Alterar dados do usuário'),
                  onTap: () => print('Clicou'),
                ),
                Text('Option 1'),
                Text('Option 2'),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Aplicativo Menu Drawer'),
        ),
        body: Center(
          child: Text('Página do usuário'),
        ),
      ),
    );
  }
}
