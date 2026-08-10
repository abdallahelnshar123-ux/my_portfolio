import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/models/skill.dart';
import 'package:my_portfolio/features/home/widgets/skills/skill_item.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      decoration: BoxDecoration(),
      width: double.infinity,
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          mainAxisExtent: 250,
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
