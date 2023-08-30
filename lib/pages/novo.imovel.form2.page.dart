import 'package:dev_movel_me_ajuda_ape/dto/enums/form.labels.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    AppLocalizations _localization = AppLocalizations.of(context)!;

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
        title: Text(_localization.titleF2),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text(_localization.house),
              value: _casaSelected,
              onChanged: (bool? value) {
                setState(() {
                  _casaSelected = value ?? false;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
            ),
            CheckboxListTile(
              title: Text(_localization.apartament),
              value: _apSelected,
              onChanged: (bool? value) {
                setState(() {
                  _apSelected = value ?? false;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
              tristate: true,
            ),
            CheckboxListTile(
              title: Text(_localization.republic),
              value: _repSelected,
              onChanged: (bool? value) {
                setState(() {
                  _repSelected = value ?? false;
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
                          label: Text(_localization.numRooms),
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
                          label: Text(_localization.numBath),
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
                    decoration: InputDecoration(
                      label: Text(_localization.size),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _tfValController,
                    decoration: InputDecoration(
                      label: Text(_localization.rent),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                      controller: _tfCondController,
                      decoration: InputDecoration(
                        label: Text(_localization.condominium),
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _tfIptuController,
                    decoration: InputDecoration(
                      label: Text(_localization.iptu),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _tfDescController,
                    maxLines: 2,
                    decoration: InputDecoration(
                      label: Text(_localization.desc),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.multiline,
                    maxLength: 100,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF353535),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 40)),
                    child: Text(
                      _localization.goon,
                      style: TextStyle(fontSize: 15, color: Color(0xFFF2BC1B)),
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
