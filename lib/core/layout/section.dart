import 'package:flutter/material.dart';

import '../constants/app_spacing.dart';
import 'content_container.dart';

class Section extends StatelessWidget {
  const Section({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ??
          const EdgeInsets.symmetric(
            horizontal: AppSpacing.lg,
            vertical: AppSpacing.xxxl,
          ),
      child: ContentContainer(child: child),
    );
  }
}
