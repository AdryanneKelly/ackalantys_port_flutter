import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:flutter/material.dart';

class MenuMobileWidget extends StatelessWidget {
  final ValueChanged<int> onMenuClick;
  const MenuMobileWidget({super.key, required this.onMenuClick});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    return Drawer(
      backgroundColor: colors.menuBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 100,
              child: Image.asset('assets/images/contact-me.png'),
            ),
            const SizedBox(height: 20),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Adryanne',
                  style: theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w900),
                  children: <TextSpan>[
                    TextSpan(text: 'Kelly', style: theme.textTheme.titleLarge),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(color: Colors.white.withOpacity(0.5)),
            ),
            ListTile(
              leading: Icon(Icons.home, color: colors.drawerMenuIconColor),
              title: Text('Home', style: theme.textTheme.labelLarge),
              onTap: () {
                onMenuClick(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.person, color: colors.drawerMenuIconColor),
              title: Text('About', style: theme.textTheme.labelLarge),
              onTap: () {
                onMenuClick(2);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.work, color: colors.drawerMenuIconColor),
              title: Text('Projects', style: theme.textTheme.labelLarge),
              onTap: () {
                onMenuClick(3);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.mail, color: colors.drawerMenuIconColor),
              title: Text('Contact', style: theme.textTheme.labelLarge),
              onTap: () {
                onMenuClick(4);
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30),
              child: Text(
                '© 2024 Adryanne Kelly',
                style: theme.textTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
    );
  }
}
