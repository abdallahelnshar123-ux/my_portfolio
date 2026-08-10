import 'package:flutter/material.dart';

class Skill {
  const Skill({
    required this.title,
    required this.subskills,
    required this.skillColor,
  });

  final String title;
  final List<String> subskills;
  final Color skillColor;
}
