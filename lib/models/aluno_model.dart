import 'dart:convert';
import 'package:consumo_api/models/curso_model.dart';
import 'package:consumo_api/models/endereco_model.dart';

class AlunoModel {
  int id;
  String nome;
  int? idade;
  List<String> nomeCursos;
  List<CursoModel> cursos;
  EnderecoModel endereco;

  AlunoModel(
      {required this.id,
      required this.nome,
      this.idade,
      required this.nomeCursos,
      required this.cursos,
      required this.endereco});

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'nomeCursos': nomeCursos,
      'cursos': cursos.map((curso) => curso.toMap()).toList(),
      'enderco': endereco.toMap(),
    };

    if (idade != null) {
      map['idade'] = idade;
    }

    return map;
  }

  String toJson() => jsonEncode(toMap());

  factory AlunoModel.fromMap(Map<String, dynamic> map) {
    return AlunoModel(
        id: map['id'],
        nome: map['nome'],
        nomeCursos: List<String>.from(map['nomeCursos']),
        cursos: map['cursos']
            .map<CursoModel>((cursoMap) => CursoModel.fromMap(cursoMap))
            .toList(),
        endereco:
            EnderecoModel.fromMap(map['endereco'] ?? <String, dynamic>{}));
  }

  factory AlunoModel.fromJson(String json) => AlunoModel.fromJson(json);
}
