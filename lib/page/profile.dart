import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
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
