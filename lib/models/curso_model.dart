import 'dart:convert';

class CursoModel {
  int cursoId;
  String cursoNome;
  bool isAluno;

  CursoModel(
      {required this.cursoId, required this.cursoNome, required this.isAluno});

  Map<String, dynamic> toMap() {
    return {
      'id': cursoId,
      'nome': cursoNome,
      'isAluno': isAluno,
    };
  }

  String toJson() => jsonEncode(toMap());

  factory CursoModel.fromMap(Map<String, dynamic> map) {
    return CursoModel(
        cursoId: map['id'], cursoNome: map['nome'], isAluno: map['isAluno']);
  }

  factory CursoModel.fromJson(String json) =>
      CursoModel.fromJson(jsonDecode(json));
}
