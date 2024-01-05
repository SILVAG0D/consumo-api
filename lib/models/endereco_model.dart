import 'dart:convert';

import 'package:consumo_api/models/cidade_model.dart';
import 'package:consumo_api/models/telefone_model.dart';

class EnderecoModel {
  String nomeRua;
  int numero;
  String cep;
  CidadeModel cidade;
  TelefoneModel telefone;

  EnderecoModel(
      {required this.nomeRua,
      required this.numero,
      required this.cep,
      required this.cidade,
      required this.telefone});

  Map<String, dynamic> toMap() {
    return {
      'rua': nomeRua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toMap(),
      'telefone': telefone.toMap()
    };
  }

  String toJson() => jsonEncode(toMap());

  factory EnderecoModel.fromMap(Map<String, dynamic> map) {
    return EnderecoModel(
        nomeRua: map['rua'],
        numero: map['numero'],
        cep: map['CEP'],
        cidade: CidadeModel.fromMap(map['cidade']),
        telefone: TelefoneModel.fromMap(map['telefone']));
  }
  factory EnderecoModel.fromJson(String json) =>
      EnderecoModel.fromMap(jsonDecode(json));
}
