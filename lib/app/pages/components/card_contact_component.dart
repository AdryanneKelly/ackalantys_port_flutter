// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:flutter/material.dart';

class CardContactComponent extends StatelessWidget {
  final String imageIcon;
  final VoidCallback onTap;

  const CardContactComponent({
    Key? key,
    required this.imageIcon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    return InkWell(
      onTap: onTap,
      child: Card(
        color: colors.contactSocialCardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            imageIcon,
            height: 25,
          ),
        ),
      ),
    );
  }
}
