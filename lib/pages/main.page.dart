import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../state/main.state.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppState mainState = context.watch<AppState>();
    
    return Scaffold(
      body: [
        Container(
          color: Colors.grey,
          child: const Center(
            child: Text("Home page"),
          ),
        ),
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
        indicatorColor: Colors.transparent,
        backgroundColor: const Color(0xFF353535),
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(
                Icons.home, 
                color: Color(0xFFF2BC1B),
            ),
            icon: Icon(
                Icons.home_outlined,
                color: Color(0xFFF2BC1B),
              ),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(
                Icons.add_circle, 
                color: Color(0xFFF2BC1B),
            ),
            icon: Icon(
                Icons.add_circle_outline,
                color: Color(0xFFF2BC1B),
              ),
            label: "Novo anúncio",
          ),
          NavigationDestination(
            selectedIcon: Icon(
                Icons.message,
                color: Color(0xFFD2BC1B),
            ),
            icon: Icon(
                Icons.message_outlined,
                color: Color(0xFFD2BC1B),
              ),
            label: "Mensagens",
          ),
          NavigationDestination(
            selectedIcon: Icon(
                Icons.person,
                color: Color(0xFFD2BC1B),
            ),
            icon: Icon(
                Icons.person_outline,
                color: Color(0xFFD2BC1B),
              ),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
