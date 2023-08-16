class Caracteristica {
  bool? furnished;
  bool? garden;
  bool? balcony;
  bool? serviceArea;
  bool? recreationArea;
  bool? gym;
  bool? parking;

  Caracteristica(
      {this.furnished,
      this.garden,
      this.balcony,
      this.serviceArea,
      this.recreationArea,
      this.gym,
      this.parking});

  Caracteristica.fromJson(Map<String, dynamic> json) {
    furnished = json['furnished'];
    garden = json['garden'];
    balcony = json['balcony'];
    serviceArea = json['service_area'];
    recreationArea = json['recreation_area'];
    gym = json['gym'];
    parking = json['parking'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['furnished'] = this.furnished;
    data['garden'] = this.garden;
    data['balcony'] = this.balcony;
    data['service_area'] = this.serviceArea;
    data['recreation_area'] = this.recreationArea;
    data['gym'] = this.gym;
    data['parking'] = this.parking;
    return data;
  }
}
