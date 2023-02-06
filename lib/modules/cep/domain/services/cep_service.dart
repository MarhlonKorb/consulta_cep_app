import 'package:consulta_cep_app/modules/cep/domain/repositories/i_cep_repository.dart';

import '../models/cep.dart';

class CepService {

  final ICepRepository cepRepository;

  CepService({required this.cepRepository});

  Future<Cep> buscar(String cep){
    try{
    return cepRepository.buscar(cep);
    } on Exception{
      throw Exception('Não foi possível realizar a busca pelo cep $cep!');
    }
  }
}