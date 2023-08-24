import 'package:dev_movel_me_ajuda_ape/classes/imovel.dart';
import 'package:flutter/material.dart';

import '../classes/custom_color_theme.dart';

class ImovelCard extends StatelessWidget {
  final bool isFavorite;
  final Imovel imovel;
  final Function(int) callbackFavButton;
  const ImovelCard(
      {super.key,
      required this.isFavorite,
      required this.callbackFavButton,
      required this.imovel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: CustomColorTheme.primaryColor.withAlpha(30),
          onTap: () {
            Navigator.pushNamed(context, '/description');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    height: 156,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(imovel.imageLinks[0]),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColorTheme.onSurfaceColor,
                      ),
                      child: IconButton(
                        onPressed: () => callbackFavButton(imovel.id),
                        color: Colors.red.shade800,
                        icon: Icon(isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      imovel.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(imovel.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.6),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.home_outlined),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            'R\$ ${imovel.rent.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColorTheme.tertiaryColor,
                            ),
                          ),
                        ),
                        const Icon(Icons.home_work_outlined),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            'R\$ ${imovel.condominium.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: CustomColorTheme.tertiaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
