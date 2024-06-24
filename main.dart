import 'Compras.dart';
import 'Produto.dart';

main() {
  Compras lista = Compras();
  Produto feijao = Produto(nome: 'Feijão', quantidade: 4);
  Produto arroz = Produto(nome: 'Arroz', quantidade: 1);
  Produto macarrao = Produto(nome: 'Macarrão', quantidade: 2);

  lista.addCompras(feijao);
  lista.addCompras(arroz);
  lista.addCompras(macarrao);
  lista.listarCompras();

  lista.removeItem('Arroz');
  lista.removeItem('Feijão');
  lista.removeItem('Macarrão');
  print('\n');
  lista.listarCompras();
}
