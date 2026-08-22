import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.background, body: child);
  }
}
