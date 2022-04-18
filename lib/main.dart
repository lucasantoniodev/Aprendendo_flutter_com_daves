import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_application/utils/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future _getProdutos() async {
    // Classe responsável por decodificar os dados recebidos da URL. Com ela é possível analisarmos todo o contexto que a url trás, como porta,host, corpo da mensagem e muitos outros.
    Uri uri = Uri.parse(
        'https://api.json-generator.com/templates/93KwgPK78mRS/data?access_token=dnfm5qhydk39j6ilkqkjkgq4p637gl04ib4owmp2');
    // print(uri.port);

    var response = await http.get(
        uri); // A requisição .get retorna uma String, por isso precisamos converter para json no próximo método;
    print(response.body.runtimeType); // Tipo do retorno "String".

    var dados = json.decode(response
        .body); // Transformando uma lista/objeto String para Lista de objeto/map;
    // print(dados.runtimeType);

    List<Produto> produtos = [];

    dados.forEach((elemento) {
      Produto produto = Produto(
        elemento['produto_id'],
        elemento['produto'],
        elemento['endereco'],
        elemento['descricao'],
        elemento['imagem'],
        int.parse(elemento['quantidade']),
        double.parse(elemento['preco']),
        elemento['completed'],
      );

      produtos.add(produto);
    });

    return produtos;
  }

  
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: FutureBuilder(
            future: _getProdutos(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Center(child: Text('Carregando...'));
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('${snapshot.data[index].descricao}'),
                      onTap: () {
                        print(
                            'O produto selecionado foi ${snapshot.data[index]}, na posição $index');
                      },
                    );
                  },
                );
              }
            }),
      ),
    );
  }
}
