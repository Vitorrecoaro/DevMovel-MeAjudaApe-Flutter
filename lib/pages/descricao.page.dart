import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: DescricaoScreen(),
  ));
}

class DescricaoScreen extends StatelessWidget {
  const DescricaoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Descrição'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: -48),
              child: Image.asset('assets/foto_ap.png'),
            ),
            Container(
              margin: const EdgeInsets.only(top: -40),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Aluguel',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Condomínio',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'R\$300,00',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'R\$700,00',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'IPTU',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'R\$150,00',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const GridRow(
              icon: 'baseline_bed_24',
              title: '2',
              subtitle: 'Quartos',
            ),
            const GridRow(
              icon: 'baseline_bathtub_24',
              title: '0',
              subtitle: 'Suítes',
            ),
            const GridRow(
              icon: 'baseline_shower_24',
              title: '2',
              subtitle: 'Banheiros',
            ),
            const GridRow(
              icon: 'baseline_square_24',
              title: '60m²',
              subtitle: 'Área',
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                'Endereço: Padre Teixeira, 1465, Centro, São Carlos',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Descrição',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porta, turpis vel porta tincidunt, leo nibh bibendum libero, sed vulputate mauris mauris et mauris. Nullam lobortis, lectus sed convallis laoreet, quam lectus fermentum mi, a tristique arcu velit efficitur mauris.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Características do imóvel',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      FeatureText('Armário embutido'),
                      FeatureText('Área de serviço'),
                    ],
                  ),
                  Row(
                    children: [
                      FeatureText('Armário de cozinha'),
                      FeatureText('Varanda'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Contato do anunciante',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Row(
                    children: [
                      ContactText('Whatsapp: (12) 91234-5678'),
                      ContactText('Código do imóvel: 12345'),
                    ],
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Contato'),
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

class GridRow extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const GridRow({super.key, 
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset('assets/$icon.png'),
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
}

class FeatureText extends StatelessWidget {
  final String text;

  const FeatureText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}

class ContactText extends StatelessWidget {
  final String text;

  const ContactText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
