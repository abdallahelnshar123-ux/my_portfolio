import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/features/home/widgets/about_me/content_widget_desktop.dart';
import 'package:my_portfolio/features/home/widgets/about_me/content_widget_mobile_tablet.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    var r = context.responsive;
    return Container(
      height: context.width * r.aboutSectionHeight,
      padding: EdgeInsets.all(r.aboutSectionPadding),
      width: 600,
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              text: 'Who Am  ',
              style: GoogleFonts.changaTextTheme().titleLarge?.copyWith(
                color: AppColors.white,
                fontSize: r.aboutMeFontSize,
              ),
              children: [
                TextSpan(
                  text: 'I!',
                  style: GoogleFonts.changaTextTheme().titleLarge?.copyWith(
                    color: AppColors.primary,
                    fontSize: r.aboutMeFontSize,
                  ),
                ),
              ],
            ),
          ),
          FittedBox(
            fit: .scaleDown,
            child: Text(
              'Software Developer'
              '  |  Flutter Developer'
              '  |  Problem Solver'
              '  |  UI Enthusiast',
              style: context.textTheme.bodyMedium?.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
          SizedBox(height: 70),
          Expanded(
            child: Responsive.isDesktop(context)
                ? ContentWidgetDesktop()
                : ContentWidgetMobileTablet(),
          ),
        ],
      ),
    );
  }
}
