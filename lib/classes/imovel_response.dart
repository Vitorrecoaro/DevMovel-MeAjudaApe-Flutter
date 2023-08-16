import 'package:dev_movel_me_ajuda_ape/classes/imovel.dart';

class ImovelResponse {
  late int qtd;
  late List<Imovel> imoveis;

  ImovelResponse({required this.qtd, required this.imoveis});

  ImovelResponse.fromJson(Map<String, dynamic> json) {
    qtd = json['qtd'];
    imoveis = <Imovel>[];

    json['imoveis'].forEach((v) {
      imoveis.add(Imovel.fromJson(v));
    });
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['qtd'] = qtd;
    data['imoveis'] = imoveis.map((v) => v.toJson()).toList();

    return data;
  }
}
