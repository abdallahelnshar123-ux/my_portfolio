import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/animated_background/data/tech_icons.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

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
            spacing: 20,
            mainAxisAlignment: .center,
            children: [
              TextButton.icon(
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.all(r.heroButtonPadding),
                  ),
                  shape: WidgetStatePropertyAll<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: AppColors.primary),
                    ),
                  ),
                  backgroundColor: WidgetStatePropertyAll(AppColors.primary),
                ),
                onPressed: () async {
                  final whatsappUrl = Uri.parse(
                    "https://drive.google.com/file/d/1AvwvCyUIcqhV_l4FEq0FsuQxhQrysyaO/view?usp=sharing",
                  );
                  if (await canLaunchUrl(whatsappUrl)) {
                    await launchUrl(
                      whatsappUrl,
                      mode: LaunchMode.externalApplication,
                    );
                  }
                },
                label: Text(
                  'My CV',
                  style: context.textTheme.headlineSmall?.copyWith(
                    color: AppColors.surface,
                    fontSize: r.heroButtonContentSize,
                  ),
                ),
                icon: Icon(
                  Icons.list_alt_outlined,
                  size: r.heroButtonContentSize,
                  color: AppColors.surface,
                ),
              ),
              TextButton.icon(
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll(
                    EdgeInsets.all(r.heroButtonPadding),
                  ),
                  shape: WidgetStatePropertyAll<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: AppColors.border),
                    ),
                  ),
                  backgroundColor: WidgetStatePropertyAll(AppColors.surface),
                ),
                onPressed: () async {
                  final whatsappUrl = Uri.parse(
                    "https://github.com/abdallahelnshar123-ux",
                  );
                  if (await canLaunchUrl(whatsappUrl)) {
                    await launchUrl(
                      whatsappUrl,
                      mode: LaunchMode.externalApplication,
                    );
                  }
                },
                label: Text(
                  'GitHub',
                  style: context.textTheme.headlineSmall?.copyWith(
                    color: AppColors.textPrimary,
                    fontSize: r.heroButtonContentSize,
                  ),
                ),
                icon: Icon(
                  Icons.code,
                  size: r.heroButtonContentSize,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
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
