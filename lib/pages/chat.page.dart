import 'package:dev_movel_me_ajuda_ape/classes/custom_color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    AppLocalizations _localization = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(_localization.owner),
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
              color: CustomColorTheme.onSurfaceColor,
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
