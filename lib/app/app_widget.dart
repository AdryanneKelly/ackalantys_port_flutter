import 'package:ackalantys/app/controller/theme_controller.dart';
import 'package:ackalantys/app/pages/home_page.dart';
import 'package:ackalantys/app/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeController>(
      create: (_) => ThemeController(),
      builder: (context, child) {
        final themeController = Provider.of<ThemeController>(context);
        return MaterialApp(
          title: 'Adryanne Kelly - Portfólio',
          debugShowCheckedModeBanner: false,
          theme: themeController.isLight ? AppTheme.light : AppTheme.dark,
          home: const HomePage(),
        );
      },
    );
  }
}
