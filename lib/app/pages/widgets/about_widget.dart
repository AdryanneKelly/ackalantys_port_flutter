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
                width: size.width * 0.4,
                child: Image.asset(
                  'assets/images/cat-code.png',
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
                    style: theme.textTheme.titleLarge!.copyWith(color: colors.titleSessionColor),
                  ),
                  SizedBox(height: size.height * 0.02),
                  SizedBox(
                    width: size.width * 0.4,
                    child: Text(
                      'Caminhando pela minha jornada profissional na tecnologia, sempre em busca de novos desafios e aprendizados.',
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  SizedBox(
                    width: size.width * 0.4,
                    child: Text(
                      'Olá pessoal! Sou Adryanne, uma desenvolvedora de software full-stack formada em Análise e Desenvolvimento de Sistemas pela Faculdade Lourenço Filho e atualmente pós-graduanda em Engenharia de Software. Atuante na Orbe Telecom, como Analista de Sistemas, onde transformo desafios em soluções criativas. \n\nMinha expertise abrange stacks como PHP, Laravel e Flutter, moldando meu percurso no desenvolvimento de software. \n\nNos momentos off-code, leitura e jogos é minha paixão. Afinal, a vida ganha um toque especial quando equilibramos trabalho, lazer e uma boa dose de código.',
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
