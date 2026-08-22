import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../controller/floating_background_controller.dart';

class FloatingBackground extends StatefulWidget {
  const FloatingBackground({super.key});

  @override
  State<FloatingBackground> createState() => _FloatingBackgroundState();
}

class _FloatingBackgroundState extends State<FloatingBackground>
    with SingleTickerProviderStateMixin {
  late final FloatingBackgroundController controller;

  @override
  void initState() {
    super.initState();
    controller = FloatingBackgroundController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller.initialize(vsync: this, screenSize: MediaQuery.sizeOf(context));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: AnimatedBuilder(
        animation: controller,
        builder: (_, _) {
          return Stack(
            children: controller.icons.map((icon) {
              return Positioned(
                left: icon.position.dx,
                top: icon.position.dy,
                child: Opacity(
                  opacity: 0.15,
                  child: SvgPicture.asset(
                    icon.asset,
                    width: icon.size,
                    height: icon.size,
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
