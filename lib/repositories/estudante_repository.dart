import 'dart:convert';

import 'package:consumo_api/models/aluno_model.dart';
import 'package:http/http.dart' as http;

class EstudanteRepository {
  Future<List<AlunoModel>> findAll() async {
    final response =
        await http.get(Uri.parse('http://localhost:8080/students'));

    if (response.statusCode != 200) {
      throw Exception();
    }

    final responseAluno = jsonDecode(response.body);

    return responseAluno.map<AlunoModel>((aluno) {
      return AlunoModel.fromMap(aluno);
    }).toList();
  }

  Future<AlunoModel> findById(int id) async {
    final response =
        await http.get(Uri.parse('http://localhost:8080/students/$id'));

    if (response.statusCode != 200) {
      throw Exception();
    }

    return AlunoModel.fromJson(response.body);
  }

  // Future<void> criarAluno(AlunoModel aluno) {}

  // Future<void> editarAluno(AlunoModel aluno) {}

  // Future<void> deletarPorId(int id) {}
}
