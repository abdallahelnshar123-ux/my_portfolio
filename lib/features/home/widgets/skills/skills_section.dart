import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/extensions/build_context_extension.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';
import 'package:my_portfolio/features/home/models/skill.dart';
import 'package:my_portfolio/features/home/widgets/skills/skill_item.dart';

import '../../../../core/theme/app_colors.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var r = context.responsive;
    return Container(
      padding: EdgeInsets.all(r.aboutSectionPadding),
      decoration: BoxDecoration(color: Colors.black),
      width: double.infinity,
      child: Column(
        spacing: Responsive.isDesktop(context) ? 80 : 45,
        children: [
          Text.rich(
            TextSpan(
              text: 'My ',
              style: GoogleFonts.changaTextTheme().titleLarge?.copyWith(
                color: AppColors.white,
                fontSize: r.aboutMeFontSize,
              ),
              children: [
                TextSpan(
                  text: 'Skills!',
                  style: GoogleFonts.changaTextTheme().titleLarge?.copyWith(
                    color: AppColors.primary,
                    fontSize: r.aboutMeFontSize,
                  ),
                ),
              ],
            ),
          ),

          Responsive.isDesktop(context)
              ? GridView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: r.skillsCrossAxisCount,
                    mainAxisExtent: r.skillsMainAxisExtent,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  children: skillsList
                      .map(
                        (skill) => SkillItem(
                          title: skill.title,
                          subSkills: skill.subskills,
                          color: skill.skillColor,
                        ),
                      )
                      .toList(),
                )
              : ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) => SkillItem(
                    title: skillsList[index].title,
                    subSkills: skillsList[index].subskills,
                    color: skillsList[index].skillColor,
                  ),
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(height: 20),
                  itemCount: skillsList.length,
                ),
        ],
      ),
    );
  }
}

const List<Skill> skillsList = [
  Skill(title: 'Languages', subskills: ['Dart'], skillColor: Colors.blue),
  Skill(title: 'Framework', subskills: ['Flutter'], skillColor: Colors.cyan),
  Skill(
    title: 'Architecture',
    subskills: [
      'MVVM',
      'SOLID Principles',
      'Clean Architecture',
      'Repository Pattern',
      'Feature-based Architecture',
    ],
    skillColor: Colors.deepPurple,
  ),
  Skill(
    title: 'Core Concepts',
    subskills: [
      'OOP',
      'JSON Parsing',
      'Mobile Application Lifecycle',
      'Debugging & Troubleshooting',
    ],
    skillColor: Colors.orange,
  ),
  Skill(
    title: 'State Management',
    subskills: ['Bloc/cubit', 'Provider'],
    skillColor: Colors.green,
  ),
  Skill(
    title: 'Firebase',
    subskills: ['Firebase Authentication', 'Cloud Firestore'],
    skillColor: Colors.amber,
  ),
  Skill(
    title: 'Local Storage',
    subskills: ['Shared Preferences', 'Flutter Secure Storage'],
    skillColor: Colors.brown,
  ),
  Skill(
    title: 'Development Tools',
    subskills: ['Git', 'GitHub', 'Android Studio'],
    skillColor: Colors.grey,
  ),
  Skill(
    title: 'Dependency Injection',
    subskills: ['GetIt', 'Injectable'],
    skillColor: Colors.indigo,
  ),
  Skill(
    title: 'Networking',
    subskills: [' REST APIs', 'Dio', 'retrofit'],
    skillColor: Colors.teal,
  ),
  Skill(
    title: 'Testing',
    subskills: ['Unit Testing', 'Mocktail'],
    skillColor: Colors.red,
  ),
  Skill(
    title: 'UI',
    subskills: ['Figma', 'Responsive UI', 'Adaptive UI'],
    skillColor: Colors.pink,
  ),
  Skill(
    title: 'Security',
    subskills: ['Encryption', 'Secure Data Storage'],
    skillColor: Colors.blueGrey,
  ),
];
