import 'package:flutter/material.dart';

import '../models/nav_item.dart';

class LeftNavigation extends StatelessWidget {
  final List<NavItem> items;
  final ValueChanged<NavItem> onTap;

  const LeftNavigation({super.key, required this.items, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) {
        return TextButton(
          onPressed: () => onTap(item),
          child: Text(item.title),
        );
      }).toList(),
    );
  }
}
