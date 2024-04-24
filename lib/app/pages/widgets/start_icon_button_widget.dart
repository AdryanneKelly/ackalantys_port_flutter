import 'package:flutter/material.dart';

class StartIconButtonWidget extends StatelessWidget {
  const StartIconButtonWidget({super.key, required this.imageIcon, required this.label, required this.color, required this.onTap});

  final String imageIcon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return InkWell(
      onTap:onTap,
      child: Container(
        height: size.height * 0.05,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageIcon,
              height: size.height * 0.02,
              // color: Colors.red,
            ),
            SizedBox(width: size.width * 0.005),
            Text(
              label,
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
