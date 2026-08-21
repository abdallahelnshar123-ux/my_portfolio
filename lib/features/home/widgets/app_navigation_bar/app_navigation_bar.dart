import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/app_assets.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/features/home/widgets/app_navigation_bar/lets_talk_button.dart';

import '../../models/nav_item.dart';

class AppNavigationBar extends StatelessWidget {
  final List<NavItem> items;
  final ValueChanged<NavItem> onTap;

  const AppNavigationBar({super.key, required this.items, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var isDesktop = Responsive.isDesktop(context);
    return isDesktop ? _deskTopNavBar(context) : _mobileNavBar(context);
  }

  Widget _mobileNavBar(BuildContext context) {
    var r = context.responsive;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: r.pagePaddingHorizontal),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        spacing: 10,
        mainAxisAlignment: .spaceBetween,
        children: [
          SvgPicture.asset(
            AppAssets.aLogoIcon,
            colorFilter: ColorFilter.mode(AppColors.primary, .srcIn),
            width: 30,
          ),
          Text(
            'Abdallah Elnshar',
            style: GoogleFonts.rubikTextTheme().displayLarge?.copyWith(
              fontSize: 15,
              color: AppColors.white,
              fontWeight: .w500,
            ),
          ),
          Spacer(),

          LetsTalkButton(),
          PopupMenuButton(
            
            position: .under,
            useRootNavigator: true,
            icon: Icon(Icons.menu),
            itemBuilder: (context) => items.map((item) {
              return PopupMenuItem(
                onTap: () => onTap(item),

                child: Text(
                  item.title,
                  style: context.textTheme.labelLarge?.copyWith(
                    color: AppColors.white,
                    fontSize: r.leftNavigationFontSize,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _deskTopNavBar(BuildContext context) {
    var r = context.responsive;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: r.pagePaddingHorizontal),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        spacing: 10,
        mainAxisAlignment: .spaceBetween,
        children: [
          SvgPicture.asset(
            AppAssets.aLogoIcon,
            colorFilter: ColorFilter.mode(AppColors.primary, .srcIn),
            width: 50,
          ),
          Text(
            'Abdallah Elnshar',
            style: GoogleFonts.rubikTextTheme().displayLarge?.copyWith(
              fontSize: 25,
              color: AppColors.white,
              fontWeight: .w500,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: .center,
              spacing: 5,
              crossAxisAlignment: .start,
              children: items.map((item) {
                return ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith<Color>((
                      states,
                    ) {
                      if (states.contains(WidgetState.hovered)) {
                        return AppColors.primary;
                      }
                      return AppColors.background;
                    }),
                    animationDuration: const Duration(milliseconds: 300),
                    elevation: WidgetStateProperty.all(0),
                  ),
                  onPressed: () => onTap(item),
                  child: Text(
                    item.title,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: AppColors.white,
                      fontSize: r.leftNavigationFontSize,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          LetsTalkButton(),
        ],
      ),
    );
  }
}
