import 'package:dev_movel_me_ajuda_ape/components/featured.text.dart';
import 'package:flutter/material.dart';
import 'package:dev_movel_me_ajuda_ape/classes/imovel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:dev_movel_me_ajuda_ape/classes/custom_color_theme.dart';
import 'package:dev_movel_me_ajuda_ape/components/carrousel.dart';

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
                        style: const TextStyle(
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
                        style: const TextStyle(
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
                    style: const TextStyle(
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
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    localization.property_characteristics,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    spacing: 70,
                    children: [
                      if (imovel.characteristics.furnished ?? false)
                        FeaturedText(
                          text: localization.furnished,
                        ),
                      if (imovel.characteristics.garden ?? false)
                        FeaturedText(
                          text: localization.garden,
                        ),
                      if (imovel.characteristics.balcony ?? false)
                        FeaturedText(
                          text: localization.balcony,
                        ),
                      if (imovel.characteristics.serviceArea ?? false)
                        FeaturedText(
                          text: localization.serviceArea,
                        ),
                      if (imovel.characteristics.recreationArea ?? false)
                        FeaturedText(
                          text: localization.recreationArea,
                        ),
                      if (imovel.characteristics.gym ?? false)
                        FeaturedText(
                          text: localization.gym,
                        ),
                      if (imovel.characteristics.parking ?? false)
                        FeaturedText(
                          text: localization.parking,
                        ),
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
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const FeaturedText(text: 'Whatsapp: (12) 91234-5678'),
                      FeaturedText(
                        text: '${localization.property_code}: 12345',
                      ),
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
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              "/msg",
                              arguments: "William",
                            );
                          },
                          child: Text(
                            localization.contact,
                            style: const TextStyle(color: Color(0xFFF2BC1B)),
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
    color: CustomColorTheme.surfaceColor,
    elevation: 8,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    margin: const EdgeInsets.all(8),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 30,
            color: CustomColorTheme.primaryColor,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ),
  );
}
