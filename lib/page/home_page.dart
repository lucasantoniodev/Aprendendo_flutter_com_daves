import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
          child: ElevatedButton(
        child: Text('Voltar...'),
        onPressed: () {
         
          Navigator.of(context).pop();
        },
      )),
    );
  }
}
