import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logging/logging.dart';
import 'package:reputeiros/generated/l10n.dart';

import 'navigation.dart';

void main() => runApp(ReputeirosApp());

class ReputeirosApp extends StatelessWidget {
  final _navParser = ReputeirosRouteInformationParser();
  final _navDelegate = ReputeirosRouterDelegate();

  ReputeirosApp() {
    _setupLog();
  }

  void _setupLog() {
    Logger.root
      ..level = Level.ALL
      ..onRecord.listen((record) {
        print('${record.loggerName} [${record.level.name}]: ${record.time}: ${record.message}');
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      onGenerateTitle: (context) => S.of(context).title,
      routeInformationParser: _navParser,
      routerDelegate: _navDelegate,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.yellowAccent,
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
    );
  }
}
