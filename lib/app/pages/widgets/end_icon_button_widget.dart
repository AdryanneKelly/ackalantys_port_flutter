import 'package:flutter/material.dart';

class EndIconButtonWidget extends StatelessWidget {
  const EndIconButtonWidget({super.key, required this.label, required this.color, required this.imageIcon, required this.onTap});

  final String label;
  final Color color;
  final String imageIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
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
            Text(
              label,
              style: theme.textTheme.labelLarge,
            ),
            SizedBox(width: size.width * 0.005),
            Image.asset(
              imageIcon,
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
