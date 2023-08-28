import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NovoImovelForms2 extends StatefulWidget {
  const NovoImovelForms2({super.key});

  @override
  State<NovoImovelForms2> createState() => _NovoImovelForms2State();
}

class _NovoImovelForms2State extends State<NovoImovelForms2> {
  bool _casaSelected = false;
  bool _apSelected = false;
  bool _repSelected = false;

  final TextEditingController _tfM2Controller = TextEditingController();
  final TextEditingController _tfValController = TextEditingController();
  final TextEditingController _tfCondController = TextEditingController();
  final TextEditingController _tfIptuController = TextEditingController();
  final TextEditingController _tfDescController = TextEditingController();

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CheckboxListTile(
              title: const Text('Casa'),
              value: _casaSelected,
              onChanged: (bool? value) {
                setState(() {
                  _casaSelected = value!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
            ),
            CheckboxListTile(
              title: const Text('Apartamento'),
              value: _apSelected,
              onChanged: (bool? value) {
                setState(() {
                  _apSelected = value!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
            ),
            CheckboxListTile(
              title: const Text('Quarto em República'),
              value: _repSelected,
              onChanged: (bool? value) {
                setState(() {
                  _repSelected = value!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
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
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _tfValController,
                    decoration: const InputDecoration(
                      labelText: 'Valor Aluguel',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                      controller: _tfCondController,
                      decoration: const InputDecoration(
                        labelText: 'Valor Condomínio',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _tfIptuController,
                    decoration: const InputDecoration(
                      labelText: 'Valor IPTU',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _tfDescController,
                    maxLines: 2,
                    decoration: const InputDecoration(
                      labelText: 'Descrição',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLength: 100,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 40)),
                    child: const Text(
                      'CONTINUAR',
                      style: TextStyle(fontSize: 15),
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
