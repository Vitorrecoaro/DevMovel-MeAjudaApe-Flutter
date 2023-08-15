import 'package:flutter/material.dart';

class ImovelCard extends StatelessWidget {
  const ImovelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
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
            Image.asset(
              'assets/foto_ap.jpg',
            ),
            Padding(
              padding:  const EdgeInsets.all(12.0),
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
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.6),
                      )
                    ),
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
    );
  }
}