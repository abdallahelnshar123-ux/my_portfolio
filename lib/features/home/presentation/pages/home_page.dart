import 'package:flutter/material.dart';

import '../../../../core/layout/app_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: SingleChildScrollView(child: Column(children: [])),
    );
  }
}
