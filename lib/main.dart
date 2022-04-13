import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Texto\nTexto2', // Adicionando outra linha de texto
        textDirection:
            TextDirection.ltr, // Texto da esquerda para direita (Padrão)
        style: TextStyle(
          height: 2.15, // DISTÂNCIA ENTRE OS TEXTOS !!!!!!!
          fontSize: 100, // Alterar tamanho do texto (px);
          fontStyle: FontStyle.italic,
          fontWeight:
              FontWeight.bold, // Alterar o peso/espessura do texto "negrito";
          color: Colors.blue, // Cor do texto
          backgroundColor: Colors.yellow.shade700,
          decoration: TextDecoration.underline,
          fontFamily: 'Nasalization-rg', // Font do texto da pasta assets configurado no pubspec.yaml
        ),
      ),
    );
  }
}
