import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: DescricaoScreen(),
  ));
}

class DescricaoScreen extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/foto_ap.jpg',
    'assets/foto_ap.jpg',
    'assets/foto_ap.jpg',
  ];

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
            SizedBox(
              height: 230,
              child: Carousel(imagePaths),
            ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Aluguel',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'R\$700,00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: _buildColumnCard(
                  icon: Icons.bed_outlined,
                  title: '2',
                  subtitle: 'Quartos',
                ),
              ),
              Expanded(
                child: _buildColumnCard(
                  icon: Icons.bathtub_outlined,
                  title: '0',
                  subtitle: 'Suítes',
                ),
              ),
              Expanded(
                child: _buildColumnCard(
                  icon: Icons.shower_outlined,
                  title: '2',
                  subtitle: 'Banheiros',
                ),
              ),
              Expanded(
                child: _buildColumnCard(
                  icon: Icons.square_foot_outlined,
                  title: '60m²',
                  subtitle: 'Área',
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Center(
              child: Text(
                'Endereço: Padre Teixeira, 1465, Centro, São Carlos',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Descrição',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porta, turpis vel porta tincidunt, leo nibh bibendum libero, sed vulputate mauris mauris et mauris. Nullam lobortis, lectus sed convallis laoreet, quam lectus fermentum mi, a tristique arcu velit efficitur mauris.',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Características do imóvel',
                  style: TextStyle(
                    fontSize: 15,
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
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Contato do anunciante',
                  style: TextStyle(
                    fontSize: 15,
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF353535),
                    ),
                    onPressed: () {},
                    child: const Text('Contato',
                      style: TextStyle(
                        color: Color(0xFFF2BC1B)
                      ),
                    
                    ),
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
            Icon(
              icon,
              size: 30,
              color: const Color(0xFFF2BC1B)
            ),
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

  const FeatureText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        style: const TextStyle(fontSize: 13,),
      ),
    );
  }
}

class ContactText extends StatelessWidget {
  final String text;

  const ContactText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        style: const TextStyle(fontSize: 13),
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
        items: widget.imagePaths.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Image.asset(
                imagePath,
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
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
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
