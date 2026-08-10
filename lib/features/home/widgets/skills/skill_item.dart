import 'package:flutter/material.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({
    super.key,
    required this.title,
    required this.subSkills,
    required this.color,
  });

  final String title;
  final List<String> subSkills;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      height: 200,
      child: Column(
        crossAxisAlignment: .start,
        spacing: 10,
        children: [
          Text(
            title,
            style: context.textTheme.titleLarge?.copyWith(color: Colors.black),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: color.withAlpha(77),
                borderRadius: BorderRadius.circular(8),
              ),
              child: skillsChips(context),
            ),
          ),
        ],
      ),
    );
  }

  Widget skillsChips(BuildContext context) {
    return Wrap(
      runSpacing: 10,
      spacing: 10,
      children: subSkills
          .map(
            (subSkill) => Chip(
              side: BorderSide(width: 0, color: Colors.transparent),
              label: Text(subSkill),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              labelStyle: context.textTheme.labelMedium?.copyWith(
                color: AppColors.white,
              ),
              color: WidgetStatePropertyAll(color.withAlpha(102)),
            ),
          )
          .toList(),
    );
  }
}
