import 'package:ackalantys/app/pages/widgets/end_icon_button_widget.dart';
import 'package:ackalantys/app/pages/widgets/start_icon_button_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    return SizedBox(
      height: size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: size.width * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [
                      colors.primaryGradientTitleColor,
                      colors.secondaryGradientTitleColor
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  child: Text('Hi, I\'m Adryanne Kelly',
                      style: theme.textTheme.displayMedium!
                          .copyWith(color: Colors.white)),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'Software Developer',
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'I am a software developer with a passion for building and designing beautiful and functional user interfaces. I am currently a student at the University of the West Indies pursuing a BSc. in Computer Science. I am also a member of the UWI Computing Society and the UWI Mona Guild of Students.',
                  style: theme.textTheme.bodyMedium,
                ),
                // ElevatedButton.icon(onPressed: (){}, icon: , label: label)
                SizedBox(height: size.height * 0.02),
                Row(
                  children: [
                    StartIconButtonWidget(
                      color: colors.startIconButttonColor,
                      imageIcon: 'assets/icons/document.png',
                      label: 'My resume',
                    ),
                    SizedBox(width: size.width * 0.005),
                    EndIconButtonWidget(
                      color: colors.endIconButtonColor,
                      imageIcon: 'assets/icons/arrow_right.png',
                      label: 'Get in touch',
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.38,
            child: Image.asset(
              'assets/images/code-3.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
