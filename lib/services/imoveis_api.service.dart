import 'dart:convert';
import 'package:dev_movel_me_ajuda_ape/classes/imovel_response.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ImoveisApiService {
  ImovelResponse _parseImovel(String body) {
    ImovelResponse imovelResponse = ImovelResponse.fromJson(jsonDecode(body));

    return imovelResponse;
  }

  Future<ImovelResponse> getImoveis() async {
    Response response = await http.get(Uri.parse(
        'http://my-json-server.typicode.com/Vitorrecoaro/DevMovel-MeAjudaApe-API/imoveis'));

    return _parseImovel(response.body);
  }
}
