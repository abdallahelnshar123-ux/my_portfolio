import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/core/constants/app_assets.dart';
import 'package:my_portfolio/core/responsive/responsive.dart';
import 'package:my_portfolio/features/home/widgets/projects/desktop_projects.dart';
import 'package:my_portfolio/features/home/widgets/projects/mobile_tablet_projects.dart';

import '../../models/project.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isTablet(context)
        ? MobileTabletProjects(projectsList: projectList)
        : DesktopProjects(projectsList: projectList);
  }
}

const List<Project> projectList = [
  Project(
    name: 'PB vault',
    description:
        'Secure password manager built with'
        ' Flutter using Clean Architecture and Bloc/Cubit. Implements encrypted credential'
        ' storage, Firebase Authentication, Cloud Firestore synchronization, Dependency'
        ' Injection with GetIt & Injectable, responsive UI, and secure master-password '
        'protection for sensitive user data',
    image: AppAssets.pbVaultIcon,
    github: 'https://github.com/abdallahelnshar123-ux/pb_vault.git',
  ),
  Project(
    name: 'Movies',
    description:
        'Production-style Flutter application built with Clean'
        ' Architecture, Bloc/Cubit, Firebase Authentication, REST APIs,'
        ' Dependency Injection, and Repository Pattern. Features include'
        ' authentication, categorized movie browsing, watchlist, and search.',
    image: AppAssets.moviesIcon,
    github: 'http://github.com/abdallahelnshar123-ux/movies_v2',
  ),
  Project(
    name: 'Evently',
    description:
        'Event management application featuring Firebase Authentication,'
        ' Cloud Firestore CRUD operations, localization, responsive UI,'
        ' theme switching, and state management using Bloc/Cubit.',
    image: AppAssets.eventlyIcon,
    github: 'http://github.com/abdallahelnshar123-ux/evently',
  ),
  Project(
    name: 'News',
    description:
        'Built with REST APIs, Dio, responsive UI, localization,'
        ' WebView integration, and SharedPreferences for local persistence.',
    image: AppAssets.newsIcon,
    github: 'http://github.com/abdallahelnshar123-ux/news',
  ),
  Project(
    name: 'Flutter Easy Theme',
    description:
        'Published Flutter package on pub.dev providing reusable theme'
        ' management with persistent storage and BuildContext extensions.'
        ' Reached 100+ downloads within the first two weeks.',
    image: AppAssets.easyThemeIcon,
    github: 'https://github.com/abdallahelnshar123-ux/easy_theme.git',
    pubDev: 'https://pub.dev/packages/flutter_easy_theme',
  ),
];
