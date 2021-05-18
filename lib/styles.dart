import 'package:flutter/material.dart';

class Styles {
  static final candidateNameTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static final candidatePartyTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static final newsTitleTextStyle = candidateNameTextStyle;

  static final newsDescriptionTextStyle = TextStyle(
    fontSize: 12,
  );

  static final newsUrlTextStyle = TextStyle(
    fontSize: 8,
  );

  static final commentsButtonStyle = TextButton.styleFrom(
    primary: Colors.black,
  );
}
