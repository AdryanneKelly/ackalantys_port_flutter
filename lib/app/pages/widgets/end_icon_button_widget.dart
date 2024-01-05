import 'package:flutter/material.dart';

class EndIconButtonWidget extends StatelessWidget {
  const EndIconButtonWidget(
      {super.key,
      required this.label,
      required this.color,
      required this.imageIcon});

  final String label;
  final Color color;
  final String imageIcon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Container(
      height: size.height * 0.05,
      width: size.width * 0.08,
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
    );
  }
}
