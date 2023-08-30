import 'package:dev_movel_me_ajuda_ape/classes/custom_color_theme.dart';
import 'package:dev_movel_me_ajuda_ape/pages/chat.page.dart';
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
          '/': (context) => const MainPage(),
          '/description': (context) => DescricaoScreen(),
          '/forms': (context) => const NovoImovelForms(),
          '/forms2': (context) => const NovoImovelForms2(),
          '/msg': (context) => const ChatPage(),
        },
        title: 'Me ajuda Apê',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
          ),
          inputDecorationTheme: const InputDecorationTheme(),
          navigationBarTheme: NavigationBarThemeData(
            backgroundColor: CustomColorTheme.tertiaryColor,
            indicatorColor: Colors.transparent,
            iconTheme: MaterialStateProperty.all(
              IconThemeData(
                size: 28,
                color: CustomColorTheme.primaryColor,
              ),
            ),
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(
                color: CustomColorTheme.primaryColor,
              ),
            ),
          ),
          useMaterial3: true,
        ),
      ),
    );
  }
}
