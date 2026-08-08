import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/constants/app_assets.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/features/home/widgets/hero/model/social_item.dart';

class RightSidebar extends StatelessWidget {
  const RightSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    var r = context.responsive;
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.all(r.rightSideBarPadding),
        child: Column(
          spacing: r.rightSideBarSpacing,
          children: [
            RotatedBox(
              quarterTurns: 1,
              child: Text(
                "+20 1008497108",
                style: context.textTheme.labelMedium?.copyWith(
                  color: AppColors.white,
                  fontSize: r.rightSideTextSize,
                ),
              ),
            ),
            SvgPicture.asset(
              AppAssets.arrowIcon,
              colorFilter: const ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
              width: r.rightSideBarArrowSize,
            ),
            ...socialIcons.map(
              (socialItem) => IconButton(
                hoverColor: AppColors.primary,
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.surface,
                  tapTargetSize: .shrinkWrap,
                  minimumSize: Size.square(r.socialIconWidth),
                ),
                onPressed: () {},
                icon: SvgPicture.asset(
                  socialItem.icon,
                  width: r.socialIconWidth,
                  colorFilter: const ColorFilter.mode(
                    AppColors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<SocialItem> socialIcons = [
  SocialItem(
    icon: AppAssets.linkedinIcon,
    link: 'www.linkedin.com/in/abdallah-elnshar',
  ),
  SocialItem(
    icon: AppAssets.facebookIcon,
    link: 'https://www.facebook.com/share/1DdHSWrGTD/',
  ),
  SocialItem(
    icon: AppAssets.instagramIcon,
    link: 'https://www.instagram.com/abdallahelnsharr',
  ),
];
