import 'package:ackalantys/app/controllers/url_launcher_controller.dart';
import 'package:ackalantys/app/pages/components/card_project_widget.dart';
import 'package:ackalantys/app/pages/components/end_icon_button_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:ackalantys/app/shared/urls/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArticlesWidget extends StatelessWidget {
  const ArticlesWidget({super.key});

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
              localization.articles,
              style: theme.textTheme.titleLarge!.copyWith(
                color: colors.titleSessionColor,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              localization.articlesTitle,
              style: theme.textTheme.headlineLarge,
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardProjectWidget(
                  date: '2024',
                  imageProject: 'assets/images/article-1.webp',
                  title: localization.articleTitle1,
                  description: localization.descriptionArticle1,
                  stack: 'assets/icons/flutter.png',
                  onTap: () => urlLauncherController.launchURL(UrlUtils.article1Url),
                ),
                SizedBox(width: size.width * 0.02),
                CardProjectWidget(
                  date: '2024',
                  imageProject: 'assets/images/article-2.webp',
                  title: localization.articleTitle2,
                  description: localization.descriptionArticle2,
                  stack: 'assets/icons/flutter.png',
                  onTap: () => urlLauncherController.launchURL(UrlUtils.article2Url),
                ),
                SizedBox(width: size.width * 0.02),
                CardProjectWidget(
                  date: '2024',
                  imageProject: 'assets/images/article-3.jpeg',
                  title: localization.articleTitle3,
                  description: localization.descriptionArticle3,
                  stack: 'assets/icons/laravel.png',
                  onTap: () => urlLauncherController.launchURL(UrlUtils.article3Url),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.05),
            Center(
              child: EndIconButtonWidget(
                color: colors.secondaryEndIconButtonColor,
                imageIcon: 'assets/icons/arrow_right.png',
                label: localization.seeAll,
                onTap: () => urlLauncherController.launchURL(UrlUtils.devto),
              ),
            )
          ],
        ),
      ),
    );
  }
}
