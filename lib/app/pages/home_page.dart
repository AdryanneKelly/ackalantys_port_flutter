import 'package:ackalantys/app/controller/theme_controller.dart';
import 'package:ackalantys/app/pages/widgets/about_widget.dart';
import 'package:ackalantys/app/pages/widgets/contact_widget.dart';
import 'package:ackalantys/app/pages/widgets/footer_widget.dart';
import 'package:ackalantys/app/pages/widgets/home_widget.dart';
import 'package:ackalantys/app/pages/widgets/projects_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    final themeController = Provider.of<ThemeController>(context);
    return Scaffold(
      appBar: AppBar(
        titleSpacing: size.width * 0.02,
        title: RichText(
          text: TextSpan(
            text: 'Adryanne',
            style: theme.textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.w900),
            children: <TextSpan>[
              TextSpan(text: 'Kelly', style: theme.textTheme.titleLarge),
            ],
          ),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text('Home', style: theme.textTheme.labelLarge)),
          SizedBox(
            width: size.width * 0.01,
          ),
          TextButton(
            onPressed: () {},
            child: Text('About', style: theme.textTheme.labelLarge),
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
          TextButton(
            onPressed: () {},
            child: Text('Projects', style: theme.textTheme.labelLarge),
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
          TextButton(
            onPressed: () {},
            child: Text('Contact', style: theme.textTheme.labelLarge),
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
          IconButton(
            onPressed: () {
              themeController.toggleTheme();
            },
            icon: Icon(
              themeController.isLight ? Icons.brightness_2 : Icons.brightness_7,
              color: colors.toggleThemeIconColor,
            ),
          ),
          SizedBox(
            width: size.width * 0.01,
          ),
        ],
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: RawScrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const HomeWidget(),
                const AboutWidget(),
                SizedBox(height: size.height * 0.05),
                const ProjectsWidget(),
                const ContactWidget(),
                const FooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
