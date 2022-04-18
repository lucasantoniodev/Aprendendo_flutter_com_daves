import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_application/utils/produtos_model.dart';
import 'package:flutter_application/utils/detalhes_produtos.dart';

class ListarProduto extends StatefulWidget {
  const ListarProduto({Key? key}) : super(key: key);

  @override
  State<ListarProduto> createState() => _ListarProdutoState();
}

class _ListarProdutoState extends State<ListarProduto> {
  Future _getProdutos() async {
    // Classe responsável por decodificar os dados recebidos da URL. Com ela é possível analisarmos todo o contexto que a url trás, como porta,host, corpo da mensagem e muitos outros.
    Uri uri = Uri.parse(
        'https://api.json-generator.com/templates/93KwgPK78mRS/data?access_token=dnfm5qhydk39j6ilkqkjkgq4p637gl04ib4owmp2');
    // print(uri.port);

    var response = await http.get(
        uri); // A requisição .get retorna uma String, por isso precisamos converter para json no próximo método;
    // print(response.body.runtimeType); // Tipo do retorno "String".

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
      theme: ThemeData(brightness: Brightness.dark),
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
                      leading: Image.network(
                          'https://findicons.com/files/icons/1606/128x128_icons_6/128/apple.png'),
                      title: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${snapshot.data[index].produto}',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.yellow),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'R\$ ${snapshot.data[index].preco}',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      subtitle: Text(
                          '${snapshot.data[index].descricao.substring(0, 30)}...'),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetalhesProdutos(
                            produtoId: snapshot.data[index].produtoId,
                            produto: snapshot.data[index].produto,
                            descricao: snapshot.data[index].descricao,
                            imagem:
                                'https://findicons.com/files/icons/1606/128x128_icons_6/128/apple.png',
                            preco: snapshot.data[index].preco,
                          );
                        }));
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