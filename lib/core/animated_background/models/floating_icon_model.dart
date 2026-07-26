import 'package:flutter/material.dart';

class FloatingIconModel {
  String asset;
  double size;
  Offset position;
  Offset velocity;

  FloatingIconModel({
    required this.asset,
    required this.size,
    required this.position,
    required this.velocity,
  });
}
