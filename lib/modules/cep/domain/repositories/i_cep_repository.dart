import '../models/cep.dart';

abstract class ICepRepository {
  Future<Cep> buscar(String? cep);
}