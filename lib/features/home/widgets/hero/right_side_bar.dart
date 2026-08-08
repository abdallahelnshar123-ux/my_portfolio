import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/constants/app_assets.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

class RightSidebar extends StatelessWidget {
  const RightSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          spacing: 20,
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Text(
                "+20 1008497108",
                style: context.textTheme.labelMedium?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
            SvgPicture.asset(
              AppAssets.arrowIcon,
              colorFilter: const ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
