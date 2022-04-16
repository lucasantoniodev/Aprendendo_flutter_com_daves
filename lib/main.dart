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
            children: [
              Text('Insira seus dados'),
              TextField(
                decoration: InputDecoration(
                  hintText:  'Login',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)),
                ),
              ),
              
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.ac_unit_outlined),
                ),
              ),

              Text('Esqueceu sua senha?'),
              ElevatedButton(
                  onPressed: () => print('Entrou'), child: Text('Entrar'))
            ],
          ),
        ),
      ),
    );
  }
}
