import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dev_movel_me_ajuda_ape/classes/imovel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class DescricaoScreen extends StatelessWidget {
  late Imovel imovel;
  DescricaoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    imovel = ModalRoute.of(context)?.settings.arguments as Imovel;
    AppLocalizations localization = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.description),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Carousel(imovel.imageLinks),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        imovel.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${imovel.rent}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        localization.condominium,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${imovel.condominium}',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        localization.iptu,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${imovel.taxes}',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: _buildColumnCard(
                    icon: Icons.bed_outlined,
                    title: '${imovel.bedrooms}',
                    subtitle: localization.bedrooms,
                  ),
                ),
                Expanded(
                  child: _buildColumnCard(
                    icon: Icons.shower_outlined,
                    title: '${imovel.bathrooms}',
                    subtitle: localization.bathrooms,
                  ),
                ),
                Expanded(
                  child: _buildColumnCard(
                    icon: Icons.square_foot_outlined,
                    title: '${imovel.size}',
                    subtitle: localization.area,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Center(
                child: Text(
                  imovel.address,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localization.description,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    imovel.description,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localization.property_characteristics,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Wrap(
                    spacing: 70,
                    children: [
                      if (imovel.characteristics.furnished ?? false)
                        FeatureText(
                          localization.furnished,
                        ),
                      if (imovel.characteristics.garden ?? false)
                        FeatureText(
                          localization.garden,
                        ),
                      if (imovel.characteristics.balcony ?? false)
                        FeatureText(localization.balcony),
                      if (imovel.characteristics.serviceArea ?? false)
                        FeatureText(localization.serviceArea),
                      if (imovel.characteristics.recreationArea ?? false)
                        FeatureText(localization.recreationArea),
                      if (imovel.characteristics.gym ?? false)
                        FeatureText(localization.gym),
                      if (imovel.characteristics.parking ?? false)
                        FeatureText(localization.parking),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localization.advertiser_contact,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      FeatureText('Whatsapp: (12) 91234-5678'),
                      FeatureText(localization.property_code + ': 12345'),
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 16),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF353535),
                            padding: const EdgeInsets.all(10),
                          ),
                          onPressed: () {},
                          child: Text(
                            localization.contact,
                            style: TextStyle(color: Color(0xFFF2BC1B)),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildColumnCard({
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return Card(
    color: const Color(0xFFF9F9F9),
    elevation: 8,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    margin: const EdgeInsets.all(8),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon, size: 30, color: const Color(0xFFF2BC1B)),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(subtitle),
        ],
      ),
    ),
  );
}

class FeatureText extends StatelessWidget {
  final String text;

  const FeatureText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
        ),
      ),
    );
  }
}

class Carousel extends StatefulWidget {
  final List<String> imagePaths;

  const Carousel(this.imagePaths, {super.key});

  @override
  State<StatefulWidget> createState() {
    return CarouselIndicator();
  }
}

class CarouselIndicator extends State<Carousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: widget.imagePaths.map((imageLink) {
          return Builder(
            builder: (BuildContext context) {
              return Image.network(
                imageLink,
                width: MediaQuery.of(context).size.width,
                height: 230,
                fit: BoxFit.cover,
              );
            },
          );
        }).toList(),
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: widget.imagePaths.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12.0,
              height: 12.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
