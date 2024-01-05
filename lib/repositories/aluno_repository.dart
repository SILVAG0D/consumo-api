import 'dart:convert';

import 'package:consumo_api/models/aluno_model.dart';
import 'package:http/http.dart' as http;

class AlunoRepository {
  Future<List<AlunoModel>> buscarTodos() async {
    final alunosResponse =
        await http.get(Uri.parse('http://localhost:8080/alunos'));

    final alunosList = jsonDecode(alunosResponse.body);

    final todosAlunos = alunosList.map<AlunoModel>((alunoMaP) {
      return AlunoModel.fromMap(alunoMaP);
    }).toList();

    return todosAlunos;
  }

  Future<AlunoModel> buscarPorId(int id) async {
    final alunosResponse =
        await http.get(Uri.parse('http://localhost:8080/alunos/$id'));
    return AlunoModel.fromJson(alunosResponse.body);
  }
}
