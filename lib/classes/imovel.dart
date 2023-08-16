import 'package:dev_movel_me_ajuda_ape/classes/caracteristica.dart';

class Imovel {
  late int id;
  late String name;
  late double rent;
  late double condominium;
  late double taxes;
  late int bedrooms;
  late int bathrooms;
  late double size;
  late String address;
  late String description;
  late Caracteristica characteristics;
  late List<String> imageLinks;

  Imovel(
      {required this.id,
      required this.name,
      required this.rent,
      required this.condominium,
      required this.taxes,
      required this.bedrooms,
      required this.bathrooms,
      required this.size,
      required this.address,
      required this.description,
      required this.characteristics,
      required this.imageLinks});

  Imovel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    rent = json['rent'];
    condominium = json['condominium'];
    taxes = json['taxes'];
    bedrooms = json['bedrooms'];
    bathrooms = json['bathrooms'];
    size = json['size'];
    address = json['address'];
    description = json['description'];
    characteristics = Caracteristica.fromJson(json['characteristics']);
    imageLinks = json['image_links'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['id'] = id;
    data['name'] = name;
    data['rent'] = rent;
    data['condominium'] = condominium;
    data['taxes'] = taxes;
    data['bedrooms'] = bedrooms;
    data['bathrooms'] = bathrooms;
    data['size'] = size;
    data['address'] = address;
    data['description'] = description;
    data['characteristics'] = characteristics.toJson();
    data['image_links'] = imageLinks;

    return data;
  }
}
