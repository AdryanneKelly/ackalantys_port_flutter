import 'package:ackalantys/app/controllers/url_launcher_controller.dart';
import 'package:ackalantys/app/pages/components/start_icon_button_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:ackalantys/app/shared/urls/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    final localization = AppLocalizations.of(context)!;
    UrlLauncherController urlLauncherController = UrlLauncherController();
    return SizedBox(
      // height: size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: size.width * 0.4,
                  child: Image.asset(
                    'assets/images/cat-code.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/php.png',
                          height: 40,
                          color: colors.stackIconsColor,
                        ),
                        SizedBox(width: size.width * 0.01),
                        Image.asset(
                          'assets/icons/laravel.png',
                          height: 35,
                          color: colors.stackIconsColor,
                        ),
                        SizedBox(width: size.width * 0.01),
                        Image.asset(
                          'assets/icons/mysql.png',
                          height: 45,
                          color: colors.stackIconsColor,
                        ),
                        SizedBox(width: size.width * 0.01),
                        Image.asset(
                          'assets/icons/tailwind.png',
                          height: 40,
                          color: colors.stackIconsColor,
                        ),
                        SizedBox(width: size.width * 0.01),
                        Image.asset(
                          'assets/icons/flutter.png',
                          height: 30,
                          color: colors.stackIconsColor,
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Text(
                      localization.aboutMe,
                      style: theme.textTheme.titleLarge!.copyWith(color: colors.titleSessionColor),
                    ),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      width: size.width * 0.4,
                      child: Text(
                        localization.aboutMeTitle,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      width: size.width * 0.4,
                      child: SelectableText(
                        localization.aboutMeDescription,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    StartIconButtonWidget(
                      onTap: () => urlLauncherController.launchURL(UrlUtils.resume),
                      color: colors.secondaryStartIconButtonColor,
                      imageIcon: 'assets/icons/document.png',
                      label: localization.myresume,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
