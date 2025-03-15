import 'package:flutter/material.dart';
import 'package:flutter_swippable_card_animations/presentation/declarations/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTileBldr extends StatelessWidget {
  const ListTileBldr({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: kBorderRadius / 2,
        color: secondaryColor.withOpacity(0.125),
      ),
      child: ListTile(
        leading: Icon(icon, color: primaryColor, size: 35),
        title: Text(title, style: GoogleFonts.poppins(fontSize: 18)),
        trailing: const Icon(
          Icons.navigate_next_outlined,
          color: Colors.grey,
          size: 30,
        ),
      ),
    );
  }
}
