import 'package:dev_movel_me_ajuda_ape/classes/imovel_response.dart';
import 'package:dev_movel_me_ajuda_ape/components/imovel.card.dart';
import 'package:dev_movel_me_ajuda_ape/components/imovel.card.skeleton.dart';
import 'package:dev_movel_me_ajuda_ape/services/fav_imoveis.service.dart';
import 'package:flutter/material.dart';
import 'package:dev_movel_me_ajuda_ape/services/imoveis_api.service.dart';

class ImoveisPage extends StatefulWidget {
  const ImoveisPage({super.key});

  @override
  State<ImoveisPage> createState() => _ImoveisPageState();
}

class _ImoveisPageState extends State<ImoveisPage> {
  FavImoveisService favImoveisService = FavImoveisService();
  ImoveisApiService imoveisApiService = ImoveisApiService();

  Future<ImovelResponse> prepareData() async {
    await favImoveisService.loadData();
    return imoveisApiService.getImoveis();
  }

  void toggleFavorite(int imovelId) {
    favImoveisService.toggleFavorite(imovelId);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: prepareData(),
        builder: (context, snapshot) {
          return Container(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                  itemCount: snapshot.data != null ? snapshot.data!.qtd : 3,
                  itemBuilder: (context, index) {
                    if (snapshot.hasData) {
                      return ImovelCard(
                        imovel: snapshot.data!.imoveis[index],
                        isFavorite: favImoveisService
                            .isFavorite(snapshot.data!.imoveis[index].id),
                        callbackFavButton: toggleFavorite,
                      );
                    } else {
                      return ImovelCardSkeleton(key: UniqueKey());
                    }
                  }),
            ),
          );
        });
  }
}
