class Produtos {
  final List? produtos;

  Produtos(this.produtos);
}

class Produto {
  final String? produtoId;
  final String? produto;
  final String? endereco;
  final String? descricao;
  final String? imagem;
  final int quantidade;
  final double preco;
  final bool? completed;

  Produto(this.produtoId, this.produto, this.endereco, this.descricao,
      this.imagem, this.quantidade, this.preco, this.completed);

  // O factory permite a classe receber um dado ou vários dados, torna a classe inteligênte
  factory Produto.fromJson(Map json) {
    return Produto(
        json['produtoId'],
        json['produto'],
        json['endereco'], 
        json['descricao'],
        json['imagem'],
        json['quantidade'], 
        json['preco'],
        json['completed'],
        );
  }
  Map toJson() => {
        'produtoId': this.produtoId,
        'produto': this.produto,
        'endereco': this.endereco,
        'descricao': this.descricao,
        'imagem': this.imagem,
        'quantidade': this.quantidade,
        'preco': this.preco,
        'completed': this.completed,
      };
}
