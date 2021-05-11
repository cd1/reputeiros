import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'president_candidates.dart';

void main() => runApp(ReputeirosApp());

class ReputeirosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reputeiros',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Reputeiros'),
        ),
        body: PresidentCandidatesGrid(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.yellowAccent,
        textTheme: GoogleFonts.ralewayTextTheme(),
      ),
    );
  }
}
