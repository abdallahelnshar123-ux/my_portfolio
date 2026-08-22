import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/constants/app_assets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/extensions/build_context_extension.dart';
import '../../../../core/responsive/responsive.dart';
import '../../../../core/theme/app_colors.dart';

class LetsTalkButton extends StatefulWidget {
  const LetsTalkButton({super.key});

  @override
  State<LetsTalkButton> createState() => _LetsTalkButtonState();
}

class _LetsTalkButtonState extends State<LetsTalkButton> {
  late var r = context.responsive;

  @override
  Widget build(BuildContext context) {
    var isDesktop = Responsive.isDesktop(context);
    return isDesktop ? _deskTopButton() : _mobileButton();
  }

  Widget _mobileButton() {
    return TextButton.icon(
      icon: SvgPicture.asset(
        AppAssets.whatsappIcon,
        colorFilter: ColorFilter.mode(AppColors.background, .srcIn),
        width: 15,
      ),
      onPressed: _onPressed,
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 0, horizontal: 8),
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.hovered)) {
            return AppColors.white;
          }
          return AppColors.success;
        }),
      ),
      label: Text(
        "Let's Talk",
        style: context.textTheme.labelLarge?.copyWith(
          color: AppColors.background,
          fontSize: r.leftNavigationFontSize,
        ),
      ),
    );
  }

  Widget _deskTopButton() {
    return TextButton.icon(
      icon: SvgPicture.asset(
        AppAssets.whatsappIcon,
        colorFilter: ColorFilter.mode(AppColors.background, .srcIn),
        width: 20,
      ),
      onPressed: _onPressed,
      label: Text(
        "Let's Talk",
        style: context.textTheme.labelLarge?.copyWith(
          color: AppColors.background,
          fontSize: r.leftNavigationFontSize,
        ),
      ),
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(EdgeInsets.all(15)),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.hovered)) {
            return AppColors.white;
          }
          return AppColors.success;
        }),
      ),
    );
  }

  Future<void> _onPressed() async {
    final phoneNumber = "201008497108";
    final whatsappUrl = Uri.parse(
      "https://wa.me/$phoneNumber?text=${Uri.encodeComponent('Hello Abdallah!')}",
    );
    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Could not launch WhatsApp');
    }
  }
}
