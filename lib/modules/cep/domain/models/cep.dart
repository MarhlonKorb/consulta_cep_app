import 'dart:convert';

class Cep {
  final String? cep;
  final String? logradouro;
  final String? complemento;
  final String? bairro;
  final String? localidade;
  final String? uf;
  final String? unidade;
  final String? ibge;
  final String? ddd;

  const Cep({
    this.cep,
    this.logradouro,
    this.complemento,
    this.bairro,
    this.localidade,
    this.uf,
    this.unidade,
    this.ibge,
    this.ddd
  });

  factory Cep.fromJson(String str) => Cep.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cep.fromMap(Map<String, dynamic> json) => Cep(
        cep: json["cep"],
        logradouro: json["logradouro"],
        complemento: json["complemento"],
        bairro: json["bairro"],
        localidade: json["localidade"],
        uf: json["uf"],
        unidade: json["unidade"],
        ibge: json["ibge"],
        ddd: json["ddd"],
    );

    Map<String, dynamic> toMap() => {
        "cep": cep,
        "logradouro": logradouro,
        "complemento": complemento,
        "bairro": bairro,
        "localidade": localidade,
        "uf": uf,
        "unidade": unidade,
        "ibge": ibge,
        "ddd": ddd,
    };
}
