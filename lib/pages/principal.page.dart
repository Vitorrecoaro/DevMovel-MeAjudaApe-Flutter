import 'package:dev_movel_me_ajuda_ape/pages/novo.imovel.form1.page.dart';
import 'package:dev_movel_me_ajuda_ape/pages/imoveis.page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../state/main.state.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppState mainState = context.watch<AppState>();
    AppLocalizations localization = AppLocalizations.of(context)!;

    return Scaffold(
      body: [
        const ImoveisPage(),
        const NovoImovelForms(),
        const Placeholder(),
        Container(
          color: Colors.blue,
          child: const Center(
            child: Text("Profile page"),
          ),
        ),
      ][mainState.idxNavBar],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (idx) => mainState.setIdx(idx),
        selectedIndex: mainState.idxNavBar,
        destinations: [
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.home,
            ),
            icon: const Icon(
              Icons.home_outlined,
            ),
            label: localization.home,
          ),
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.add_circle,
            ),
            icon: const Icon(
              Icons.add_circle_outline,
            ),
            label: localization.newAnnounce,
          ),
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.message,
            ),
            icon: const Icon(
              Icons.message_outlined,
            ),
            label: localization.messages,
          ),
          NavigationDestination(
            selectedIcon: const Icon(
              Icons.person,
            ),
            icon: const Icon(
              Icons.person_outline,
            ),
            label: localization.profile,
          ),
        ],
      ),
    );
  }
}
