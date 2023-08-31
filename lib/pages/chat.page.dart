import 'package:dev_movel_me_ajuda_ape/classes/custom_color_theme.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    String contato = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(contato),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_pin,
              size: 32,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: CustomColorTheme.surfaceColor,
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                    child: TextFormField(),
                  ),
                ),
                IconButton(
                  color: CustomColorTheme.secondaryColor,
                  icon: const Icon(Icons.send),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
