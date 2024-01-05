import 'dart:convert';

class TelefoneModel {
  int ddd;
  String numeroTelefone;

  TelefoneModel({required this.ddd, required this.numeroTelefone});

  //! metodo que pega o nosso objeto telefone e transforma em um objeto Map<String,dynamic>
  //toMap
  //Passo 1
  Map<String, dynamic> toMap() {
    return {'ddd': ddd, 'telefone': numeroTelefone};
  }

  //! metodo que pega um Map<String,dynamic> e transforma em um json pelo pacote dart:convert (jsonEncode)
  // toJson
  //Passo 2
  String toJson() => jsonEncode(toMap());

  //Passo 2 da deserialização
  factory TelefoneModel.fromMap(Map<String, dynamic> map) {
    return TelefoneModel(
      ddd: map['ddd'] ?? 0,
      numeroTelefone: map['numeroTelefone'] ?? '',
    );
  }

  //Passo 1 da deserialização
  factory TelefoneModel.fromJson(String json) =>
      TelefoneModel.fromMap(jsonDecode(json));
}
