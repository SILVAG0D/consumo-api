import 'dart:convert';

import 'package:consumo_api/models/curso_model.dart';
import 'package:http/http.dart' as http;

class ProdutoRepository {
  Future<CursoModel> getNomeCurso(String nmCurso) async {
    //!Faz a requisição get ao servidor e deixa a resposta dentro do response
    final response = await http
        .get(Uri.parse('http://localhost:8080/products?name=$nmCurso'));

    if (response.statusCode != 200) {
      throw Exception();
    }

    //! decodifica o json rescebido do response
    final responseData = jsonDecode(response.body);

    if (responseData.isEmpty) {
      throw Exception('Produto não encontrado');
    }

    //! retorna a lista de produtos depois de ter feito um map
    return CursoModel.fromMap(responseData.first);
  }
}
