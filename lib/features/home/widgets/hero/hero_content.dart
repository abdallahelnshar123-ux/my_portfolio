import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/animated_background/data/tech_icons.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    var r = context.responsive;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        r.contentLeftPadding,
        r.contentTopPadding,
        r.contentRightPadding,
        r.contentBottomPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          // const Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text('mobile application developer'),
          //     Text('lets collaborate'),
          //   ],
          // ),
          const Spacer(),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "ABDALLAH",
              style: GoogleFonts.carterOneTextTheme().displayLarge?.copyWith(
                fontSize: r.heroTitle,
                color: AppColors.white,
              ),
            ),
          ),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: techIcons
                .map(
                  (icon) => Container(
                    padding: EdgeInsets.all(r.techIconPadding),
                    decoration: BoxDecoration(
                      color: AppColors.textSecondary,
                      borderRadius: BorderRadius.circular(r.techIconRadius),
                    ),
                    child: SvgPicture.asset(
                      icon,
                      fit: BoxFit.cover,
                      width: r.techIconWidth,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
