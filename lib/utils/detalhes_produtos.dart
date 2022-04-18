import 'package:flutter/material.dart';

class DetalhesProdutos extends StatefulWidget {
  final String? produtoId;
  final String? produto;
  final String? descricao;
  final String? imagem;
  final double? preco;

  const DetalhesProdutos(
      {Key? key,
      this.produtoId,
      this.produto,
      this.descricao,
      this.preco,
      this.imagem})
      : super(key: key);

  @override
  State<DetalhesProdutos> createState() => _DetalhesProdutosState();
}

class _DetalhesProdutosState extends State<DetalhesProdutos> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Detalhes')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  widget.imagem.toString(),
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.produto!.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                    
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.monetization_on_rounded),
                      Text('${widget.preco!.toString()}'),
                    ],
                  ),
                ),
                Text('${widget.descricao}', style: TextStyle(fontSize: 10),),
                
                  ],
                ),
                ElevatedButton(
                  child: const Text('Voltar'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
