import 'package:flutter/material.dart';
import 'package:flutter_swippable_card_animations/presentation/components/appbar.dart';
import 'package:flutter_swippable_card_animations/presentation/components/primary_btn.dart';
import 'package:flutter_swippable_card_animations/presentation/components/spacer.dart';
import 'package:flutter_swippable_card_animations/presentation/declarations/constants/constants.dart';
import 'package:flutter_swippable_card_animations/presentation/screens/homepage/Widget/a_header_widget.dart';
import 'package:flutter_swippable_card_animations/presentation/screens/homepage/Widget/b_swiper_widget.dart';
import 'package:flutter_swippable_card_animations/presentation/screens/homepage/Widget/c_list_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(appBarTitle: title),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CardLayout(),
            HeightSpacer(myHeight: kSpacing),
            const Settings(),
            HeightSpacer(myHeight: kSpacing),
          ],
        ),
      ),
    );
  }
}

class CardLayout extends StatelessWidget {
  const CardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 400,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Column(
        children: [
          HeightSpacer(myHeight: kSpacing),
          const HeaderWidgets(),
          HeightSpacer(myHeight: kSpacing / 2),
          const SwiperBuilder(),
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kHPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featured',
            style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          HeightSpacer(myHeight: kSpacing),
          ListTileBldr(
            title: 'View analytics',
            icon: Iconsax.chart_1,
            btnFun: () {},
          ),
          HeightSpacer(myHeight: kSpacing / 2),
          ListTileBldr(title: 'Passbook', icon: Iconsax.book, btnFun: () {}),
          HeightSpacer(myHeight: kSpacing / 2),
          ListTileBldr(
            title: 'Add Money',
            icon: Iconsax.money_3,
            btnFun: () {},
          ),
          HeightSpacer(myHeight: kSpacing * 2),
          Align(
            alignment: Alignment.bottomCenter,
            child: PrimaryBtn(btnText: 'Continue', btnFun: () {}),
          ),
        ],
      ),
    );
  }
}
