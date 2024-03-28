import 'package:ackalantys/app/pages/widgets/end_icon_button_widget.dart';
import 'package:ackalantys/app/pages/widgets/mobile_widgets/card_project_mobile_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:flutter/material.dart';

class ProjectsMobileWidget extends StatelessWidget {
  const ProjectsMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    return SizedBox(
      // height: size.height,
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0, bottom: 80),
        child: Column(
          children: [
            Text(
              'Projects',
              style: theme.textTheme.titleLarge!.copyWith(
                color: colors.titleSessionColor,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Take a look at my highlighted projects',
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineLarge,
            ),
            SizedBox(height: size.height * 0.05),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CardProjectMobileWidget(
                  date: 'Jul - Dec 2023',
                  imageProject: 'assets/images/image_project.png',
                  title: 'Project 1',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut purus eget nunc ut dignissim.',
                  stack: 'assets/icons/tailwind.png',
                ),
                SizedBox(height: size.height * 0.03),
                const CardProjectMobileWidget(
                  date: 'Jul - Dec 2023',
                  imageProject: 'assets/images/image_project.png',
                  title: 'Project 1',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut purus eget nunc ut dignissim.',
                  stack: 'assets/icons/tailwind.png',
                ),
                SizedBox(height: size.height * 0.03),
                const CardProjectMobileWidget(
                  date: 'Jul - Dec 2023',
                  imageProject: 'assets/images/image_project.png',
                  title: 'Project 1',
                  description:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ut purus eget nunc ut dignissim.',
                  stack: 'assets/icons/tailwind.png',
                ),
              ],
            ),
            SizedBox(height: size.height * 0.05),
            Center(
              child: EndIconButtonWidget(
                color: colors.secondaryEndIconButtonColor,
                imageIcon: 'assets/icons/arrow_right.png',
                label: 'See all', onTap: () {  },
              ),
            )
          ],
        ),
      ),
    );
  }
}
