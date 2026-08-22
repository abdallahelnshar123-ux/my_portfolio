import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';
import '../features/home/pages/home_page.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: Title(
        title: 'Abdallah Elnshar — Flutter Developer',
        color: Colors.black,
        child: HomePage(),
      ),
    );
  }
}
