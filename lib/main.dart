// ignore_for_file: prefer_const_constructors

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
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Calculadora'),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'Número',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'AC',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '<',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '7',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '8',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '9',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '/',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '4',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '5',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '6',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  'X',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '1',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '2',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '3',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '-',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  '0',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '.',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '=',
                  style: TextStyle(fontSize: 48),
                ),
                Text(
                  '+',
                  style: TextStyle(fontSize: 48),
                ),
              ],
            ),
            Text('Coluna 6'),
          ],
        ),
      ),
    );
  }
}
