import 'package:dev_movel_me_ajuda_ape/pages/descricao.page.dart';
import 'package:dev_movel_me_ajuda_ape/pages/novo.imovel.form2.page.dart';
import 'package:dev_movel_me_ajuda_ape/pages/principal.page.dart';
import 'package:dev_movel_me_ajuda_ape/pages/novo.imovel.form1.page.dart';
import 'package:dev_movel_me_ajuda_ape/state/main.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => AppState(),
      child: MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('pt_BR'),
        ],
        initialRoute: '/',
        routes: {
          '/': (context) => MainPage(),
          '/description': (context) => DescricaoScreen(),
          '/forms': (context) => NovoImovelForms(),
          '/forms2': (context) => NovoImovelForms2(),
        },
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          navigationBarTheme: NavigationBarThemeData(
            backgroundColor: const Color(0xFF353535),
            indicatorColor: Colors.transparent,
            iconTheme: MaterialStateProperty.all(
                const IconThemeData(size: 28, color: Color(0xFFF2BC1B))),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(
                color: Color(0xFFF2BC1B),
              ),
            ),
          ),
          useMaterial3: true,
        ),
      ),
    );
  }
}
