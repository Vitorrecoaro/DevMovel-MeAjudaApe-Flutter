import 'package:flutter/material.dart';

class NovoImovelForms2 extends StatefulWidget {
  const NovoImovelForms2({super.key});

  @override
  State<NovoImovelForms2> createState() => _NovoImovelForms2State();
}

class _NovoImovelForms2State extends State<NovoImovelForms2> {
  TextEditingController _tfM2Controller = TextEditingController();
  TextEditingController _tfValController = TextEditingController();
  TextEditingController _tfCondController = TextEditingController();
  TextEditingController _tfIptuController = TextEditingController();
  TextEditingController _tfDescController = TextEditingController();

  final TextEditingController quartosController = TextEditingController();
  final TextEditingController banheirosController = TextEditingController();
  QuartosLabel? NquartosSelected;
  BanheirosLabel? NbanheirosSelected;

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<QuartosLabel>> nQuartos =
        <DropdownMenuEntry<QuartosLabel>>[];
    for (final QuartosLabel quartos in QuartosLabel.values) {
      nQuartos.add(DropdownMenuEntry<QuartosLabel>(
          value: quartos, label: quartos.label));
    }

    final List<DropdownMenuEntry<BanheirosLabel>> nBanheiros =
        <DropdownMenuEntry<BanheirosLabel>>[];
    for (final BanheirosLabel banheiros in BanheirosLabel.values) {
      nBanheiros.add(DropdownMenuEntry<BanheirosLabel>(
          value: banheiros, label: banheiros.label));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Insira as informações do imóvel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownMenu<QuartosLabel>(
                  initialSelection: QuartosLabel.um,
                  controller: quartosController,
                  label: const Text('Número de Quartos'),
                  dropdownMenuEntries: nQuartos,
                  onSelected: (QuartosLabel? quartos) {
                    setState(() {
                      NquartosSelected = quartos;
                    });
                  },
                  width: 165,
                ),
                const SizedBox(width: 20),
                DropdownMenu<BanheirosLabel>(
                  initialSelection: BanheirosLabel.um,
                  controller: banheirosController,
                  label: const Text('Número de Banheiros'),
                  dropdownMenuEntries: nBanheiros,
                  onSelected: (BanheirosLabel? banheiros) {
                    setState(() {
                      NbanheirosSelected = banheiros;
                    });
                  },
                  width: 165,
                ),
              ],
            ),
          ),
          TextField(
            controller: _tfM2Controller,
            decoration: const InputDecoration(
              labelText: 'Tamanho Acomodação(m²)',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _tfValController,
            decoration: const InputDecoration(
              labelText: 'Valor Aluguel',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _tfCondController,
            decoration: const InputDecoration(
              labelText: 'Valor Condomínio',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _tfIptuController,
            decoration: const InputDecoration(
              labelText: 'Valor IPTU',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _tfDescController,
            decoration: const InputDecoration(
              labelText: 'Descrição',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
            child: const Text(
              'CONTINUAR',
              style: TextStyle(fontSize: 15),
            ),
          ),
        ]),
      ),
    );
  }
}

enum QuartosLabel {
  um('1'),
  dois('2'),
  tres('3'),
  quatro('4'),
  cinco('5');

  const QuartosLabel(this.label);
  final String label;
}

enum BanheirosLabel {
  um('1'),
  dois('2'),
  tres('3'),
  quatro('4'),
  cinco('5');

  const BanheirosLabel(this.label);
  final String label;
}
