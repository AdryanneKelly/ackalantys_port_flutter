import 'package:ackalantys/app/controllers/url_launcher_controller.dart';
import 'package:ackalantys/app/pages/components/end_icon_button_widget.dart';
import 'package:ackalantys/app/pages/widgets/mobile_widgets/card_project_mobile_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:ackalantys/app/shared/urls/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ArticlesMobileWidget extends StatelessWidget {
  const ArticlesMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    final localization = AppLocalizations.of(context)!;
    UrlLauncherController urlLauncherController = UrlLauncherController();
    return SizedBox(
      // height: size.height,
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0, bottom: 80),
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
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineLarge,
            ),
            SizedBox(height: size.height * 0.05),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardProjectMobileWidget(
                  date: '2024',
                  imageProject: 'assets/images/article-1.webp',
                  title: localization.articleTitle1,
                  description: localization.descriptionArticle1,
                  stack: 'assets/icons/flutter.png',
                  onTap: () => urlLauncherController.launchURL(UrlUtils.article1Url),
                ),
                SizedBox(height: size.height * 0.03),
                CardProjectMobileWidget(
                  date: '2023',
                  imageProject: 'assets/images/article-2.webp',
                  title: localization.articleTitle2,
                  description: localization.descriptionArticle2,
                  stack: 'assets/icons/flutter.png',
                  onTap: () => urlLauncherController.launchURL(UrlUtils.article2Url),
                ),
                SizedBox(height: size.height * 0.03),
                CardProjectMobileWidget(
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
                onTap: () {
                  urlLauncherController.launchURL(UrlUtils.devto);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
