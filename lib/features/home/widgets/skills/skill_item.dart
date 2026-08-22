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
    var r = context.responsive;
    return Column(
      crossAxisAlignment: .start,
      spacing: 10,
      children: [
        Text(
          title,
          style: context.textTheme.labelLarge?.copyWith(
            color: Colors.white,
            fontSize: r.skillsTitleSize,
          ),
        ),
        skillsChips(context),
      ],
    );
  }

  Widget skillsChips(BuildContext context) {
    var r = context.responsive;

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
                fontSize: r.skillsFontSize,
                color: AppColors.white,
              ),
              color: WidgetStatePropertyAll(color.withAlpha(102)),
            ),
          )
          .toList(),
    );
  }
}
