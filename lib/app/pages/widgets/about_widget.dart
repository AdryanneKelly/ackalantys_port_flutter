import 'package:ackalantys/app/pages/widgets/start_icon_button_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:flutter/material.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    return SizedBox(
      height: size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: size.width * 0.3,
                child: Image.asset(
                  'assets/images/cat_code.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/php.png',
                        height: 40,
                        color: colors.stackIconsColor,
                      ),
                      SizedBox(width: size.width * 0.01),
                      Image.asset(
                        'assets/icons/laravel.png',
                        height: 35,
                        color: colors.stackIconsColor,
                      ),
                      SizedBox(width: size.width * 0.01),
                      Image.asset(
                        'assets/icons/mysql.png',
                        height: 45,
                        color: colors.stackIconsColor,
                      ),
                      SizedBox(width: size.width * 0.01),
                      Image.asset(
                        'assets/icons/tailwind.png',
                        height: 40,
                        color: colors.stackIconsColor,
                      ),
                      SizedBox(width: size.width * 0.01),
                      Image.asset(
                        'assets/icons/flutter.png',
                        height: 30,
                        color: colors.stackIconsColor,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.02),
                  Text(
                    'About me',
                    style: theme.textTheme.titleLarge!
                        .copyWith(color: colors.titleSessionColor),
                  ),
                  SizedBox(height: size.height * 0.02),
                  SizedBox(
                    width: size.width * 0.4,
                    child: Text(
                      'I’m a passionate software developer looking for my first international oppotunity',
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  SizedBox(
                    width: size.width * 0.4,
                    child: Text(
                      'I am a software developer with a passion for building and designing beautiful and functional user interfaces. I am currently a student at the University of the West Indies pursuing a BSc. in Computer Science. I am also a member of the UWI Computing Society and the UWI Mona Guild of Students.',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  StartIconButtonWidget(
                    color: colors.secondaryStartIconButtonColor,
                    imageIcon: 'assets/icons/document.png',
                    label: 'My resume',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
