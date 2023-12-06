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
}
