import 'package:consulta_cep_app/modules/cep/domain/repositories/i_cep_repository.dart';

import '../models/cep.dart';

class CepService {

  final ICepRepository cepRepository;

  CepService({required this.cepRepository});

  Future<Cep> buscar(String cep){
    return cepRepository.buscar(cep);
  }
}