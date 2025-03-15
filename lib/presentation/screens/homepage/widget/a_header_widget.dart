import 'package:flutter/material.dart';
import 'package:flutter_swippable_card_animations/presentation/declarations/constants/constants.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../components/spacer.dart';

class HeaderWidgets extends StatelessWidget {
  const HeaderWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.75,
            child: Text(
              'Click to add more credit cards to wallet.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.75),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          WidthSpacer(myWidth: kSpacing * 5),
          Container(
            decoration: BoxDecoration(
              borderRadius: kBorderRadius / 1.5,
              color: accentColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.add, color: Colors.white, size: 35),
            ),
          ),
        ],
      ),
    );
  }
}
