import 'package:flutter/material.dart';
import 'package:flutter_swippable_card_animations/presentation/declarations/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar({
  required String appBarTitle,
  bool? centerTitle,
  List<Widget>? actionWidgets,
}) => AppBar(
  title: Text(
    appBarTitle,
    style: GoogleFonts.poppins(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
  centerTitle: centerTitle ?? true,
  elevation: 0,
  backgroundColor: primaryColor,
  actions: actionWidgets ?? [],
);
