import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/app_assets.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';

class HeroBackground extends StatelessWidget {
  const HeroBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final r = context.responsive;
    return Container(
      width: double.infinity,
      foregroundDecoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.transparent, Colors.black],
          radius: r.heroGradientRadius,
          center: Alignment(0, -0.5),
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.heroImage),
          fit: .cover,
          alignment: Alignment(0, -0.5),
        ),
      ),
    );
  }
}

/*
  child: Image.asset(
        AppAssets.heroImage,
        fit: BoxFit.fitWidth,
        alignment: Alignment(0, -0.5),
      ),

 */
