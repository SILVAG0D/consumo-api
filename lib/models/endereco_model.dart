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
}
