import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:flutter/material.dart';

class CardProjectWidget extends StatelessWidget {
  const CardProjectWidget(
      {super.key,
      required this.imageProject,
      required this.date,
      required this.title,
      required this.description,
      required this.stack});

  final String imageProject;
  final String date;
  final String title;
  final String description;
  final String stack;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    return SizedBox(
      height: 410,
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
              width: size.width * 0.25,
              child: Image.asset(imageProject, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: size.width * 0.22,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      date,
                      style: theme.textTheme.bodySmall,
                    ),
                    Image.asset(
                      stack,
                      height: 30,
                      color: colors.stackIconsColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.22,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
