import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'calendar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internationalisation',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt', 'BR'), // Português, Brasil
        // Locale('en', 'UK') // English, UK
      ],
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.indigo.shade100,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
          centerTitle: true,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const ShowDateTimePage(),
    );
  }
}
