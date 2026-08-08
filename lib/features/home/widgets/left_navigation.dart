import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

import '../models/nav_item.dart';

class LeftNavigation extends StatelessWidget {
  final List<NavItem> items;
  final ValueChanged<NavItem> onTap;

  const LeftNavigation({super.key, required this.items, required this.onTap});

  @override
  Widget build(BuildContext context) {
    var r = context.responsive;
    return Column(
      spacing: 5,
      crossAxisAlignment: .start,
      children: items.map((item) {
        return TextButton(
          style: TextButton.styleFrom(surfaceTintColor: AppColors.primary),
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
    );
  }
}
