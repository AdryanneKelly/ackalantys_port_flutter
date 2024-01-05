import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: SizedBox(
        width: size.width * 0.8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '© 2024 Adryanne Kelly',
              style: theme.textTheme.bodySmall,
            ),
            Row(
              children: [
                TextButton(onPressed: () {}, child: const Text('GitHub')),
                SizedBox(
                  width: size.width * 0.01,
                ),
                TextButton(onPressed: () {}, child: const Text('LinkedIn')),
                SizedBox(
                  width: size.width * 0.01,
                ),
                TextButton(onPressed: () {}, child: const Text('Instagram')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
