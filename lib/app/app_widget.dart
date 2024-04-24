import 'package:ackalantys/app/controllers/language_controller.dart';
import 'package:ackalantys/app/controllers/theme_controller.dart';
import 'package:ackalantys/app/pages/home_page.dart';
import 'package:ackalantys/app/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeController>(create: (_) => ThemeController()),
        ChangeNotifierProvider<LanguageController>(create: (_) => LanguageController()),
      ],
      builder: (context, child) {
        final themeController = Provider.of<ThemeController>(context);
        final languageController = Provider.of<LanguageController>(context);
        return MaterialApp(
          title: 'Adryanne Kelly - Portfólio',
          debugShowCheckedModeBanner: false,
          theme: themeController.isLight ? AppTheme.light : AppTheme.dark,
          home: const HomePage(),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('pt'),
          ],
          locale: languageController.isPortuguese ? const Locale('pt') : const Locale('en'),
        );
      },
    );
  }
}
