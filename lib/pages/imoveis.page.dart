import 'package:dev_movel_me_ajuda_ape/components/imovel_card.dart';
import 'package:dev_movel_me_ajuda_ape/services/fav_imoveis.service.dart';
import 'package:flutter/material.dart';

class ImoveisPage extends StatefulWidget {
  const ImoveisPage({super.key});

  @override
  State<ImoveisPage> createState() => _ImoveisPageState();
}

class _ImoveisPageState extends State<ImoveisPage> {
  FavImoveisService favImoveisService = FavImoveisService();

  void toggleFavorite(int imovelId) {
    favImoveisService.toggleFavorite(imovelId);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: favImoveisService.loadData(),
      builder: (context, snapshot) {
        return Container(
          color: Colors.grey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ImovelCard(
                isFavorite: favImoveisService.isFavorite(1),
                callbackFavButton: toggleFavorite,
              ),
            ),
          ),
        );
      }
    );
  }
}
