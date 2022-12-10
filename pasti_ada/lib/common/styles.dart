import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Colors.white;
const Color iconColor = Colors.orange;
final TextStyle fontTitleLarge = GoogleFonts.poppins(
    fontSize: 23, fontWeight: FontWeight.w800, color: Colors.orange);
final TextStyle fontTitleMedium = GoogleFonts.poppins(
    fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15);
final TextStyle fontSubtitle = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: Colors.orange);
final TextStyle fontSubtitleMedium = GoogleFonts.poppins(
    fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.15);
final TextStyle fontbodyText = GoogleFonts.poppins(
    fontSize: 12, fontWeight: FontWeight.w300, letterSpacing: 0.25);
final TextStyle fontbodyTextSmall = GoogleFonts.poppins(
    fontSize: 10, fontWeight: FontWeight.w300, letterSpacing: 0.25);
final TextStyle fontCardText = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w300, letterSpacing: 0.25);

// text theme
final kTextTheme = TextTheme(
  headline5: fontTitleLarge,
  headline6: fontTitleMedium,
  subtitle1: fontSubtitle,
  subtitle2: fontSubtitleMedium,
  bodyText2: fontbodyText,
);
