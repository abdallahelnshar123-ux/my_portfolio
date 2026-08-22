import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/features/home/widgets/hero/right_side_bar.dart';

import 'hero_background.dart';
import 'hero_content.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    var r = context.responsive;
    return SizedBox(
      height: r.sectionHeight,
      child: Stack(children: [HeroBackground(), HeroContent(), RightSidebar()]),
    );
  }
}
