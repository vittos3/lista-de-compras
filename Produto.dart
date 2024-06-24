class Produto {
  String _nome;
  int _quantidade;

  Produto({
    required String nome,
    required int quantidade,
  })  : _nome = nome,
        _quantidade = quantidade;

  String get nome => _nome;
  int get quantidade => _quantidade;
}
