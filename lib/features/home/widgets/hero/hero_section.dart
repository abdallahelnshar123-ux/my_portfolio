import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/widgets/hero/right_side_bar.dart';

import 'hero_background.dart';
import 'hero_content.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: Stack(children: [HeroBackground(), HeroContent(), RightSidebar()]),
    );
  }
}
