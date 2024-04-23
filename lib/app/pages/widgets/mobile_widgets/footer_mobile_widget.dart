import 'package:ackalantys/app/controller/url_launcher_controller.dart';
import 'package:ackalantys/app/shared/urls/url_utils.dart';
import 'package:flutter/material.dart';

class FooterMobileWidget extends StatelessWidget {
  const FooterMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    UrlLauncherController urlLauncherController = UrlLauncherController();
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: SizedBox(
        width: size.width * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '© 2024 Adryanne Kelly',
              style: theme.textTheme.bodySmall,
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      urlLauncherController.launchURL(UrlUtils.github);
                    },
                    child: const Text('GitHub')),
                SizedBox(
                  width: size.width * 0.01,
                ),
                TextButton(
                    onPressed: () {
                      urlLauncherController.launchURL(UrlUtils.linkedin);
                    },
                    child: const Text('LinkedIn')),
                SizedBox(
                  width: size.width * 0.01,
                ),
                TextButton(
                    onPressed: () {
                      urlLauncherController.launchURL(UrlUtils.instagram);
                    },
                    child: const Text('Instagram')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
