import 'package:dev_movel_me_ajuda_ape/classes/custom_color_theme.dart';
import 'package:flutter/material.dart';

class ContatoCard extends StatelessWidget {
  final String nomeContato;
  final String ultimaMsg;
  const ContatoCard(
      {super.key, required this.nomeContato, required this.ultimaMsg});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/msg", arguments: nomeContato);
      },
      child: Card(
        color: CustomColorTheme.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          child: SizedBox(
            height: 75,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nomeContato,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(ultimaMsg),
                    ],
                  ),
                ),
                const Icon(
                  Icons.person_2,
                  size: 32,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
