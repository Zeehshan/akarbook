import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme kTextTheme(TextTheme theme) {
  return GoogleFonts.cairoTextTheme(theme);
}

TextTheme kHeadlineTheme(TextTheme theme, [String language = 'er']) {
  return GoogleFonts.cairoTextTheme(theme);
}