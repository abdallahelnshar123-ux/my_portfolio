import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';

import '../../../../core/animated_background/data/tech_icons.dart';
import '../../../../core/theme/app_colors.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Expanded(child: FirstColumn()),
        Expanded(child: SecondColumn()),
      ],
    );
  }
}

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    this.child,
    this.color,
    this.padding,
    this.borderRadius,
    this.alignment,
    this.width,
    this.height,
  });

  final Widget? child;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final AlignmentGeometry? alignment;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius ?? BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}

class FirstColumn extends StatelessWidget {
  const FirstColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            spacing: 15,
            children: [
              Expanded(
                flex: 2,
                child: AppCard(
                  color: Colors.white12,
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Create. Publish. Contribute.',
                        style: context.textTheme.labelSmall?.copyWith(
                          color: AppColors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: AppCard(
                  color: AppColors.primary,
                  padding: const EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '1',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: AppColors.surface,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Published\nPackages',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: AppColors.surface,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            spacing: 15,
            children: [
              Expanded(
                child: AppCard(
                  color: Colors.cyan,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    spacing: 40,
                    children: [
                      Text(
                        'Tech i work with',
                        style: context.textTheme.labelSmall?.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      Expanded(
                        child: LayoutBuilder(
                          builder:
                              (
                                BuildContext context,
                                BoxConstraints constraints,
                              ) {
                                return GridView(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent:
                                            constraints.maxHeight / 3 - 10,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        crossAxisCount: 3,
                                      ),
                                  children: techIcons
                                      .map(
                                        (icon) => AppCard(
                                          color: AppColors.white,
                                          padding: const EdgeInsets.all(10),
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          child: SvgPicture.asset(
                                            icon,
                                            fit: BoxFit.contain,
                                            width: double.infinity,
                                          ),
                                        ),
                                      )
                                      .toList(),
                                );
                              },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: AppCard(color: Colors.grey, child: null)),
            ],
          ),
        ),
      ],
    );
  }
}

class SecondColumn extends StatelessWidget {
  const SecondColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Expanded(
          flex: 2,
          child: AppCard(
            color: Colors.orange[200],
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Flutter Developer specializing in building\n'
                'secure, scalable, and responsive cross-platform mobile\n'
                'applications using Flutter and Dart. Experienced in Clean\n'
                'Architecture, Bloc/Cubit, Firebase, REST API integration\n'
                'and responsive UI development. Built multiple production\n'
                'ready applications and published a reusable Flutter\n'
                'package on pub.dev, with a strong focus on clean code,\n'
                'maintainability, and continuous learning.',
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            spacing: 15,
            children: [
              Expanded(
                flex: 2,
                child: AppCard(
                  color: Colors.deepPurpleAccent,
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'Build. Ship. Improve.',
                        style: context.textTheme.labelSmall?.copyWith(
                          color: AppColors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: AppCard(
                  color: Colors.lightGreen,
                  padding: const EdgeInsets.all(20),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '5+',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: AppColors.surface,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Projects Built',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: AppColors.surface,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
