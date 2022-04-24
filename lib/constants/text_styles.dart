import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colours.dart';
import 'sizes.dart';

class TextStyles {

  static TextStyle appLogo = GoogleFonts.satisfy(
    fontSize: Sizes.headlineFont1,
    color: Colours.primaryText
  );

  static const TextStyle headline1 = TextStyle(
    fontSize: Sizes.headlineFont1,
    color: Colours.primaryText
  );

  static const TextStyle headline2 = TextStyle(
    fontSize: Sizes.headlineFont2,
    color: Colours.primaryText
  );

  static const TextStyle headline3 = TextStyle(
    fontSize: Sizes.headlineFont25,
    color: Colours.primaryText
  );

  static const TextStyle lightSubtitle1 = TextStyle(
    fontSize: Sizes.headlineFont3,
    color: Colours.primaryText
  );

  static const TextStyle lightSubtitle2 = TextStyle(
    fontSize: Sizes.headlineFont4,
    color: Colours.primaryText
  );

  static const TextStyle darkSubtitle1 = TextStyle(
    fontSize: Sizes.headlineFont3,
    color: Colours.secondaryText
  );

  static const TextStyle darkSubtitle15 = TextStyle(
    fontSize: Sizes.headlineFont38,
    color: Colours.primaryBackground
  );

  static const TextStyle darkSubtitle2 = TextStyle(
    fontSize: Sizes.headlineFont4,
    color: Colours.secondaryText
  );

}