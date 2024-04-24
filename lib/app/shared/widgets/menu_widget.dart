import 'package:ackalantys/app/controllers/language_controller.dart';
import 'package:ackalantys/app/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class MenuWidget extends StatelessWidget implements PreferredSizeWidget {
  final ValueChanged<int> onMenuClick;

  const MenuWidget({super.key, required this.onMenuClick});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final themeController = Provider.of<ThemeController>(context);
    final languageController = Provider.of<LanguageController>(context);
    final localization = AppLocalizations.of(context)!;
    return AppBar(
      titleSpacing: size.width * 0.02,
      title: RichText(
        text: TextSpan(
          text: 'Adryanne',
          style: theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w900),
          children: <TextSpan>[
            TextSpan(text: 'Kelly', style: theme.textTheme.titleLarge),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => onMenuClick(1),
          child: Text(localization.menuHome, style: theme.textTheme.labelLarge),
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
        TextButton(
          onPressed: () => onMenuClick(2),
          child: Text(localization.menuAbout, style: theme.textTheme.labelLarge),
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
        TextButton(
          onPressed: () => onMenuClick(3),
          child: Text(localization.menuProject, style: theme.textTheme.labelLarge),
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
        TextButton(
          onPressed: () => onMenuClick(4),
          child: Text(localization.menuContact, style: theme.textTheme.labelLarge),
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
        IconButton(
          onPressed: () {
            languageController.toggleLanguage();
          },
          icon: Image.asset(
            languageController.isPortuguese ? 'assets/icons/pt_lula.png' : 'assets/icons/en.png',
            height: size.height * 0.012,
          ),
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
        IconButton(
          onPressed: () {
            themeController.toggleTheme();
          },
          icon: Image.asset(
            themeController.isLight ? 'assets/icons/sun.png' : 'assets/icons/moon.png',
            height: size.height * 0.025,
          ),
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
      ],
    );
  }
}
