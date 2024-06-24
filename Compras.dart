import 'Produto.dart';

class Compras {
  List _compras = [];

  void addCompras(Produto produto) {
    Map<String, dynamic> item = {
      'nome': produto.nome,
      'quantidade': produto.quantidade
    };
    _compras.add(item);
  }

  void listarCompras() {
    if (_compras.isEmpty) {
      print('Sua lista está vazia!');
    } else {
      _compras.forEach((element) {
        print(
            'Nome produto: ${element['nome']}\nQuantidade: ${element['quantidade']}');
      });
    }
  }

  void removeItem(String nomeItem) {
    var novaLista;
    var nomesProdutos = _nomeProdutos();

    if (_estaNaLista(nomesProdutos, nomeItem) && _compras.isNotEmpty) {
      novaLista =
          _compras.where((element) => element['nome'] != nomeItem).toList();
      _compras = novaLista;
      print('O item ${nomeItem} foi removido da sua lista.');
    } else {
      print('Este produto não está na lista!');
    }
  }

  bool _estaNaLista(List listaItens, String nomeProduto) {
    var encontraItem = listaItens.any((element) => element == nomeProduto);
    return encontraItem;
  }

  List _nomeProdutos() {
    var list = _compras.map((e) => e['nome']).toList();
    return list;
  }
}
