import 'dart:convert';

class CidadeModel {
  int idCidade;
  String nomeCidade;

  CidadeModel({required this.idCidade,required this.nomeCidade});


  Map<String,dynamic> toMap() {
    return {
      'id': idCidade,
      'nome': nomeCidade
    };
  }

  String toJson() => jsonEncode(toMap());

  factory CidadeModel.fromMap(Map<String, dynamic> map) {
    return CidadeModel(idCidade: map['id'], nomeCidade: map['nome']);
  }

  factory CidadeModel.fromJson(String json) => CidadeModel.fromJson(jsonDecode(json));
}