import 'package:flutter/material.dart';

class ProfileFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF353535),
          title:const Text('Perfil',
            style: TextStyle(color: Color(0xFFF9F9F9),
              fontWeight: FontWeight.bold,
            ),
          )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/147/147142.png'
              ),
              radius: 60,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 40),
              child: Text(
                'Nome nada genérico',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
            ),
            SizedBox( width: 380 , height: 56,
              child: ElevatedButton.icon(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFFF9F9F9),
                  backgroundColor: Color(0xFF353535),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                label: Text('Conta',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(
                  Icons.person,
                  color: Color(0xFFF2BC1B),
                  size: 38,
                ),
              ),
            ),
            SizedBox(height: 6),
            SizedBox( width: 380 , height: 56,
              child: ElevatedButton.icon(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFFF9F9F9),
                  backgroundColor: Color(0xFF353535),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                label: Text('Meus Anúncios',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(
                  Icons.home_work,
                  color: Color(0xFFF2BC1B),
                  size: 38,
                ),
              ),
            ),
            SizedBox(height: 6),
            SizedBox( width: 380 , height: 56,
              child: ElevatedButton.icon(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFFF9F9F9),
                  backgroundColor: Color(0xFF353535),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                label: Text('Segurança',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(
                  Icons.security,
                  color: Color(0xFFF2BC1B),
                  size: 38,
                ),
              ),
            ),
            SizedBox(height: 6),
            SizedBox( width: 380 , height: 56,
              child: ElevatedButton.icon(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFFF9F9F9),
                  backgroundColor: Color(0xFF353535),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                label: Text('Ajuda',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(
                  Icons.help_outline,
                  color: Color(0xFFF2BC1B),
                  size: 38,
                ),
              ),
            ),
            SizedBox(height: 6),
            SizedBox( width: 380 , height: 56,
              child: ElevatedButton.icon(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFFF9F9F9),
                  backgroundColor: Color(0xFF353535),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                label: Text('Configurações',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(
                  Icons.settings,
                  color: Color(0xFFF2BC1B),
                  size: 38,
                ),
              ),
            ),
            SizedBox(height: 6),
            SizedBox( width: 380 , height: 56,
              child: ElevatedButton.icon(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0xFFF9F9F9),
                  backgroundColor: Color(0xFF353535),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                label: Text('Sair',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(
                  Icons.exit_to_app,
                  color: Color(0xFFF2BC1B),
                  size: 38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }







  Widget buildButton(String text, String iconName, VoidCallback onPressed) {
    return Container(
      width: 400,
      height: 56,
      margin: EdgeInsets.only(top: 10),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF353535), // Use your background_button drawable
        ),
        icon: Padding(
          padding: EdgeInsets.all(10),
          child: Image.asset('assets/$iconName.png'),
        ),
        label: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            text,
            style: TextStyle(
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
