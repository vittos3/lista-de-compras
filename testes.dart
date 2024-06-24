main() {
  List compras = [
    {'nome': 'Produto A', 'quantidade': 10},
    {'nome': 'Produto B', 'quantidade': 5},
    {'nome': 'Produto C', 'quantidade': 20},
    {'nome': 'Produto D', 'quantidade': 15},
  ];

  var listaNomeCompras = compras.map((e) => e['nome']).toList();

  print(estaNaLista(listaNomeCompras, 'Produto T'));
}

bool estaNaLista(List listaItens, String nomeProduto) {
  var encontraItem = listaItens.any((element) => element == nomeProduto);
  return encontraItem;
}
