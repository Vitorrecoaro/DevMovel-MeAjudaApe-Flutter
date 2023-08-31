import 'package:dev_movel_me_ajuda_ape/components/contato.card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MensagensPage extends StatelessWidget {
  MensagensPage({super.key});

  final contatos = [
    "Bruno",
    "Vitor",
    "Thiago",
  ];
  final ultimasMsgs = [
    "Se quiser pode vir dar uma olhada",
    "Olá! Este apartamento ainda está disponível?",
    "Opa! Beleza!",
  ];

  @override
  Widget build(BuildContext context) {
    AppLocalizations _localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(_localizations.messages),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView.builder(
            itemCount: contatos.length,
            itemBuilder: (buildContext, idx) => ContatoCard(
                nomeContato: contatos[idx], ultimaMsg: ultimasMsgs[idx])),
      ),
    );
  }
}
