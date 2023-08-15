import 'package:dev_movel_me_ajuda_ape/pages/imoveis.page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../state/main.state.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppState mainState = context.watch<AppState>();

    return Scaffold(
      body: [
        const ImoveisPage(),
        Container(
          color: Colors.yellow,
          child: const Center(
            child: Text("Form page"),
          ),
        ),
        Container(
          color: Colors.green,
          child: const Center(
            child: Text("Messages page"),
          ),
        ),
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
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
            ),
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.add_circle,
            ),
            icon: Icon(
              Icons.add_circle_outline,
            ),
            label: "Novo anúncio",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.message,
            ),
            icon: Icon(
              Icons.message_outlined,
            ),
            label: "Mensagens",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.person,
            ),
            icon: Icon(
              Icons.person_outline,
            ),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
