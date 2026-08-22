import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/app_assets.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';
import 'package:my_portfolio/features/home/models/project.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileTabletProjects extends StatelessWidget {
  const MobileTabletProjects({super.key, required this.projectsList});

  final List<Project> projectsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      padding: EdgeInsets.all(30),
      child: Column(
        spacing: 40,
        children: [
          Divider(color: AppColors.primary),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'PROJECTS',
                  style: GoogleFonts.lilitaOneTextTheme().titleLarge?.copyWith(
                    color: AppColors.primary,
                    fontSize: 50,
                  ),
                ),
              ],
            ),
          ),
          ...projectsList.map(
            (project) => _projectItem(
              index: projectsList.indexOf(project),
              project: project,
              context: context,
            ),
          ),
        ],
      ),
    );
  }

  Widget _projectItem({
    required int index,
    required Project project,
    required BuildContext context,
  }) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 20,
      children: [
        Image.asset(project.image, fit: .cover),
        SizedBox(height: 20),
        Text(
          project.name,
          style: GoogleFonts.lilitaOneTextTheme().titleLarge?.copyWith(
            color: AppColors.primary,
            fontSize: 50,
          ),
        ),
        Text(project.description),
        Row(
          spacing: 10,
          mainAxisAlignment: .start,
          children: [
            _iconButtonWidget(
              link: project.googlePlay,
              icon: AppAssets.googlePlayIcon,
            ),
            _iconButtonWidget(
              link: project.appStore,
              icon: AppAssets.appStoreIcon,
            ),
            _iconButtonWidget(link: project.github, icon: AppAssets.githubIcon),
            _iconButtonWidget(link: project.pubDev, icon: AppAssets.dartIcon),
          ],
        ),
      ],
    );
  }

  Widget _iconButtonWidget({required String? link, required String icon}) {
    return Visibility(
      visible: link != null,
      child: IconButton(
        padding: EdgeInsets.zero,

        style: IconButton.styleFrom(
          backgroundColor: AppColors.textSecondary,
          tapTargetSize: .shrinkWrap,
        ),
        onPressed: () async {
          final Uri url = Uri.parse(link!);
          if (await canLaunchUrl(url)) {
            await launchUrl(url, mode: LaunchMode.externalApplication);
          }
        },
        icon: SvgPicture.asset(icon, width: 20, fit: .cover),
      ),
    );
  }
}
