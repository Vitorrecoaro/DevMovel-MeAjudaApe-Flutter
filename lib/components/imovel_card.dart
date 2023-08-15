import 'package:flutter/material.dart';

class ImovelCard extends StatelessWidget {
  final bool isFavorite;
  final Function(int) callbackFavButton;
  const ImovelCard(
    {
      super.key,
      required this.isFavorite,
      required this.callbackFavButton
    }
  );
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: const Color(0xFFF2BC1B).withAlpha(30),
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
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/foto_ap.jpg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF9F9F9),
                      ),
                      child: IconButton(
                        onPressed: () => callbackFavButton(1),
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
                    const Text(
                      'Apartamento 45m², Vila Celina',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                          'Apartamento de 45m², localizado na Vila Celina, ideal para estudantes da UFSCar.',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(0.6),
                          )),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.home_outlined),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            'R\$ 450',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF353535),
                            ),
                          ),
                        ),
                        Icon(Icons.home_work_outlined),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            'R\$ 450',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF353535),
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