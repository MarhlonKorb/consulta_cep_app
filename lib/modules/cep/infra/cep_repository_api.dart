import 'package:http/http.dart' as http;
import 'package:consulta_cep_app/config/environment.dart';
import 'package:consulta_cep_app/modules/cep/domain/models/cep.dart';
import '../domain/formatter/cep_formatter.dart';
import '../domain/repositories/i_cep_repository.dart';

class CepRepositoryApi implements ICepRepository {
  
  @override
  Future<Cep> buscar(String? cep) async {
    final uri = Uri.parse('${Environment.apiUrl}/$cep/json/');

     final response = await http.get(uri);
    if (response.statusCode == 200) {
      return Cep.fromJson(response.body);
    } else {
      throw Exception('Requisição inválida!');
    }
  }
}
