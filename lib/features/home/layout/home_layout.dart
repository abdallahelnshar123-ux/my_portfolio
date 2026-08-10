import 'package:flutter/material.dart';
import 'package:my_portfolio/features/home/widgets/about_me/about_section.dart';
import 'package:my_portfolio/features/home/widgets/contact_section.dart';
import 'package:my_portfolio/features/home/widgets/left_navigation.dart';
import 'package:my_portfolio/features/home/widgets/projects_section.dart';
import 'package:my_portfolio/features/home/widgets/skills/skills_section.dart';

import '../../../core/animated_background/widgets/floating_background.dart';
import '../../../core/constants/app_sizes.dart';
import '../../../core/responsive/responsive.dart';
import '../models/nav_item.dart';
import '../widgets/hero/hero_section.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final _controller = ScrollController();
  final heroKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  late final List<NavItem> navItems = [
    NavItem(title: 'Home', key: heroKey),
    NavItem(title: 'About', key: aboutKey),
    NavItem(title: 'Skills', key: skillsKey),
    NavItem(title: 'Projects', key: projectsKey),
    NavItem(title: 'Contact', key: contactKey),
  ];

  void scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context == null) return;

    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final r = Responsive.of(context);

    return Stack(
      alignment: .topLeft,
      children: [
        const Positioned.fill(
          child: FloatingBackground(),
        ),
        SingleChildScrollView(
          controller: _controller,
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: .circular(AppSizes.radius)),
            margin: EdgeInsets.all(r.pagePadding),
            child: Column(
              crossAxisAlignment: .stretch,
              children: [
                HeroSection(key: heroKey),
                AboutSection(key: aboutKey),
                SkillsSection(key: skillsKey),
                ProjectsSection(key: projectsKey),
                ContactSection(key: contactKey),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(r.pagePadding+5),
          child: LeftNavigation(
            items: navItems,
            onTap: (item) {
              scrollTo(item.key);
            },
          ),
        ),
      ],
    );
  }
}
