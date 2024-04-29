import 'package:ackalantys/app/controllers/url_launcher_controller.dart';
import 'package:ackalantys/app/pages/components/end_icon_button_widget.dart';
import 'package:ackalantys/app/pages/components/start_icon_button_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:ackalantys/app/shared/urls/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeMobileWidget extends StatelessWidget {
  const HomeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    final localization = AppLocalizations.of(context)!;
    UrlLauncherController urlLauncherController = UrlLauncherController();
    return SizedBox(
      // height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.7,
            child: Image.asset(
              'assets/images/code-3.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: size.height * 0.04),
          SizedBox(
            width: size.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [colors.primaryGradientTitleColor, colors.secondaryGradientTitleColor],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  child: Text(localization.hello, style: theme.textTheme.displayMedium!.copyWith(color: Colors.white)),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  localization.occupation,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  localization.introduction,
                  style: theme.textTheme.bodyMedium,
                ),
                // ElevatedButton.icon(onPressed: (){}, icon: , label: label)
                SizedBox(height: size.height * 0.02),
                Row(
                  children: [
                    StartIconButtonWidget(
                      onTap: () => urlLauncherController.launchURL(UrlUtils.resume),
                      color: colors.startIconButttonColor,
                      imageIcon: 'assets/icons/document.png',
                      label: localization.myresume,
                    ),
                    SizedBox(width: size.width * 0.01),
                    EndIconButtonWidget(
                      color: colors.endIconButtonColor,
                      imageIcon: 'assets/icons/arrow_right.png',
                      label: localization.getInTouch,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
