import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({super.key});

  @override
  Widget build(BuildContext context) {
    AppLocalizations _localization = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(_localization.profile),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/147/147142.png'),
                  radius: 60,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
                  child: Text(
                    'Nome nada genérico',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                ),
                SizedBox(
                  width: 380,
                  height: 56,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFFF9F9F9),
                      backgroundColor: const Color(0xFF353535),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    label: Text(
                      _localization.account,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: const Icon(
                      Icons.person,
                      color: Color(0xFFF2BC1B),
                      size: 38,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 380,
                  height: 56,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFFF9F9F9),
                      backgroundColor: const Color(0xFF353535),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    label: Text(
                      _localization.myAds,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: const Icon(
                      Icons.home_work,
                      color: Color(0xFFF2BC1B),
                      size: 38,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 380,
                  height: 56,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFFF9F9F9),
                      backgroundColor: const Color(0xFF353535),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    label: Text(
                      _localization.safety,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: const Icon(
                      Icons.security,
                      color: Color(0xFFF2BC1B),
                      size: 38,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 380,
                  height: 56,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFFF9F9F9),
                      backgroundColor: const Color(0xFF353535),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    label: Text(
                      _localization.help,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: const Icon(
                      Icons.help_outline,
                      color: Color(0xFFF2BC1B),
                      size: 38,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 380,
                  height: 56,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFFF9F9F9),
                      backgroundColor: const Color(0xFF353535),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    label: Text(
                      _localization.settings,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: const Icon(
                      Icons.settings,
                      color: Color(0xFFF2BC1B),
                      size: 38,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 380,
                  height: 56,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color(0xFFF9F9F9),
                      backgroundColor: const Color(0xFF353535),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    label: Text(
                      _localization.exit,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    icon: const Icon(
                      Icons.exit_to_app,
                      color: Color(0xFFF2BC1B),
                      size: 38,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton(String text, String iconName, VoidCallback onPressed) {
    return Container(
      width: 400,
      height: 56,
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              const Color(0xFF353535), // Use your background_button drawable
        ),
        icon: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset('assets/$iconName.png'),
        ),
        label: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: ProfileFragment()));
}
