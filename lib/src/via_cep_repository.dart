import 'package:dio/dio.dart';
import 'package:cep_search_rks/src/model.dart';

class ViaCepRepository {
  static Future<ViaCepSearche> getViacep(String cep) async {
    var response = await Dio().get('https://viacep.com.br/ws/$cep/json/');
    return ViaCepSearche.fromJson(response.data);
  }
}
