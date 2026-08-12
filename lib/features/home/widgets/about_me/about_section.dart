import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    var r = context.responsive;
    return Container(
      padding: EdgeInsets.only(top: 50),
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Text(
            'about me',
            style: GoogleFonts.pacificoTextTheme().titleLarge?.copyWith(
              color: AppColors.white,
              fontSize: r.aboutMeFontSize,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(r.dataContainerMargin + 30),
            margin: EdgeInsets.fromLTRB(
              r.dataContainerMargin,
              r.dataContainerMargin,
              r.dataContainerMargin,
              0,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(r.dataContainerRadius),
                topRight: Radius.circular(r.dataContainerRadius),
              ),
            ),
            child: Text(
              '    I didn’t start my journey in software development'
              ' with a perfectly defined path. Like many developers,'
              ' I was looking for something I could build, understand,'
              ' and keep improving every day. That search eventually led me'
              ' to Flutter — and it quickly became more than just a'
              ' technology I was learning.\n\n'
              '    What started as learning how to build interfaces turned'
              ' into a deeper interest in understanding what happens'
              ' behind them. I began exploring application architecture,'
              ' state management, API integration, Firebase, authentication'
              ', local storage, and the principles that make an application'
              ' maintainable rather than simply functional. Over time,'
              ' I became particularly interested in Clean Architecture,'
              ' because I learned that writing code that works is'
              ' only part of the job; writing code that can grow, change,'
              ' and still make sense months later is a completely different challenge.\n\n'
              '    During this journey, I worked on real projects and spent a lot '
              'of time going beyond the happy path — thinking about security,'
              ' performance, error handling, testing, scalability, and user'
              ' experience. One of the projects I am most proud of is'
              ' PB Vault, a secure password-management application where I'
              ' had to deal with encryption, authentication, Firebase, dependency'
              ' injection, localization, and a feature-based Clean Architecture'
              '. Building it taught me how much engineering happens behind'
              ' what users simply see as “an app”.\n\n'
              '    I also enjoy turning ideas into products rather than just'
              ' implementing screens. I care about the details of an interface,'
              ' but I also care about why a feature exists, how it should'
              ' behave, what happens when something fails, and how the codebase'
              ' will handle the next feature that has not been thought of yet.'
              ' That mindset is what gradually pushed me from simply being'
              ' a Flutter learner toward thinking more like a software engineer.\n\n'
              '    Today, I focus on building Flutter applications that are clean,'
              ' scalable, and production-ready, while continuously improving'
              ' both my technical depth and my ability to solve problems.'
              ' I’m still learning, still experimenting, and still finding'
              ' better ways to build things — but that is exactly what'
              ' I enjoy about this field.\n\n'
              '    This portfolio is a small reflection of that journey: '
              'the projects I have built, the problems I have solved, and'
              ' the direction I am heading next.',
              style: GoogleFonts.courgetteTextTheme().bodySmall?.copyWith(
                color: AppColors.white,
                fontWeight: .w200,
                fontSize: r.aboutMeBodyFontSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
