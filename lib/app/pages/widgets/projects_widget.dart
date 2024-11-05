import 'package:ackalantys/app/controllers/url_launcher_controller.dart';
import 'package:ackalantys/app/pages/components/card_project_widget.dart';
import 'package:ackalantys/app/pages/components/end_icon_button_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:ackalantys/app/shared/urls/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    final localization = AppLocalizations.of(context)!;
    UrlLauncherController urlLauncherController = UrlLauncherController();
    return SizedBox(
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            Text(
              localization.projects,
              style: theme.textTheme.titleLarge!.copyWith(
                color: colors.titleSessionColor,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              localization.projectsTitle,
              style: theme.textTheme.headlineLarge,
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardProjectWidget(
                  date: '2024',
                  imageProject: 'assets/images/project-2.png',
                  title: localization.projectTitle1,
                  description: localization.descriptionProject1,
                  stack: 'assets/icons/filamentphp.png',
                  stack2: 'assets/icons/laravel.png',
                  onTap: () => urlLauncherController.launchURL(UrlUtils.project1Url),
                ),
                SizedBox(width: size.width * 0.02),
                CardProjectWidget(
                  date: '2023',
                  imageProject: 'assets/images/project-1.png',
                  title: localization.projectTitle2,
                  description: localization.descriptionProject2,
                  stack: 'assets/icons/tailwind-2.png',
                  stack2: 'assets/icons/astro.png',
                  onTap: () => urlLauncherController.launchURL(UrlUtils.project2Url),
                ),
                SizedBox(width: size.width * 0.02),
                CardProjectWidget(
                  date: '2024',
                  imageProject: 'assets/images/project-3-new.png',
                  title: localization.projectTitle3,
                  description: localization.descriptionProject3,
                  stack: 'assets/icons/flutter.png',
                  onTap: () => urlLauncherController.launchURL(UrlUtils.project3Url),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.05),
            Center(
              child: EndIconButtonWidget(
                color: colors.secondaryEndIconButtonColor,
                imageIcon: 'assets/icons/arrow_right.png',
                label: localization.seeAll,
                onTap: () => urlLauncherController.launchURL(UrlUtils.repositoriesGithub),
              ),
            )
          ],
        ),
      ),
    );
  }
}
