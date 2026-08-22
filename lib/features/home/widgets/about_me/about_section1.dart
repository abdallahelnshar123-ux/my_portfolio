import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/features/home/widgets/about_me/content_widget.dart';

class AboutSection1 extends StatelessWidget {
  const AboutSection1({super.key});

  @override
  Widget build(BuildContext context) {
    var r = context.responsive;
    return Container(
      height: context.width * r.aboutSectionHeight,
      padding: EdgeInsets.all(50),
      width: 600,
      decoration: BoxDecoration(color: Colors.black),
      child: Column(
        // spacing: 30,
        children: [
          Text.rich(
            TextSpan(
              text: 'Who Am  ',
              style: GoogleFonts.changaTextTheme().titleLarge?.copyWith(
                color: AppColors.white,
                fontSize: r.aboutMeFontSize,
              ),
              children: [
                TextSpan(
                  text: 'I!',
                  style: GoogleFonts.changaTextTheme().titleLarge?.copyWith(
                    color: AppColors.primary,
                    fontSize: r.aboutMeFontSize,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Software Developer'
            '  |  Flutter Developer'
            '  |  Problem Solver'
            '  |  UI Enthusiast',
            style: context.textTheme.bodyMedium?.copyWith(
              color: AppColors.white,
            ),
          ),
          SizedBox(height: 70),
          Expanded(child: ContentWidget()),

          // Expanded(
          //   child: Row(
          //     spacing: 10,
          //     children: [
          //       Expanded(
          //         child: Column(
          //           spacing: 10,
          //
          //           children: [
          //             Expanded(
          //               flex: 1,
          //               child: Row(
          //                 spacing: 10,
          //
          //                 children: [
          //                   Expanded(
          //                     flex: 2,
          //                     child: Container(color: Colors.white),
          //                   ),
          //                   Expanded(flex: 1, child: Container(color: Colors.blue)),
          //                 ],
          //               ),
          //             ),
          //             Expanded(
          //               flex: 2,
          //               child: Row(
          //                 spacing: 10,
          //
          //                 children: [
          //                   Expanded(child: Container(color: Colors.red)),
          //                   Expanded(child: Container(color: Colors.lightGreen)),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Expanded(
          //         child: Column(
          //           spacing: 10,
          //           children: [
          //             Expanded(flex: 2, child: Container(color: Colors.cyan)),
          //             Expanded(
          //               flex: 1,
          //               child: Row(
          //                 spacing: 10,
          //
          //                 children: [
          //                   Expanded(
          //                     flex: 2,
          //                     child: Container(color: Colors.deepPurple),
          //                   ),
          //                   Expanded(
          //                     flex: 2,
          //                     child: Container(color: Colors.purple),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
