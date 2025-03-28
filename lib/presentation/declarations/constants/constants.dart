import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color.fromARGB(255, 64, 123, 206);
Color secondaryColor = const Color(0xff4dd07f);
Color accentColor = const Color(0xfffead58);

double kSpacing = 20.00;

double kfontSize = 18.00;
double kLargefontSize = 25.00;

BorderRadius kBorderRadius = BorderRadius.circular(kSpacing);

EdgeInsets kPadding = EdgeInsets.all(kSpacing);
EdgeInsets kHPadding = EdgeInsets.symmetric(horizontal: kSpacing);
EdgeInsets kVPadding = EdgeInsets.symmetric(vertical: kSpacing);

getBtnStyle(context) => ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
  backgroundColor: primaryColor,
  fixedSize: Size(MediaQuery.of(context).size.width, 47),
  textStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
);
var btnTextStyle = TextStyle(fontSize: kfontSize);
