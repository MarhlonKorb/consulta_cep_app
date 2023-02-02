import 'dart:convert';

class Cep {
  final String? cep;
  final String? logradouro;
  final String? bairro;
  final String? localidade;
  final String? uf;
  final String? ibge;
  final String? ddd;

  const Cep({
    this.cep,
    this.logradouro,
    this.bairro,
    this.localidade,
    this.uf,
    this.ibge,
    this.ddd
  });

  factory Cep.fromJson(String str) => Cep.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cep.fromMap(Map<String, dynamic> json) => Cep(
        cep: json["cep"],
        logradouro: json["logradouro"],
        bairro: json["bairro"],
        localidade: json["localidade"],
        uf: json["uf"],
        ibge: json["ibge"],
        ddd: json["ddd"],
    );

    Map<String, dynamic> toMap() => {
        "cep": cep,
        "logradouro": logradouro,
        "bairro": bairro,
        "localidade": localidade,
        "uf": uf,
        "ibge": ibge,
        "ddd": ddd,
    };
}
