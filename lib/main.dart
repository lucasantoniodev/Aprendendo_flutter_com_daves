import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack APP'),
        ),
        body: Stack(
          // fit: StackFit.expand,
          // alignment: AlignmentDirectional.center, // Alinhar o primeiro em relação ao segundo
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Positioned(
              // top: 20,
              // left: 20,
              // right: -30,
              left: 50,
              top: 50,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
