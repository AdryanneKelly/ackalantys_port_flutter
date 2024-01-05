import 'package:ackalantys/app/pages/widgets/end_icon_button_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/profile.png'),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Contact',
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: colors.titleSessionColor,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text('Enjoyed my work? Let’s work together',
                      style: theme.textTheme.headlineLarge),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  SizedBox(
                    width: size.width * 0.3,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nisi eget nunc ultricies aliquet. Sed vitae nisi eget nunc ultricies aliquet.',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Card(
                        color: colors.contactSocialCardColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/icons/instagram.png'),
                        ),
                      ),
                      Card(
                        color: colors.contactSocialCardColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/icons/github.png'),
                        ),
                      ),
                      Card(
                        color: colors.contactSocialCardColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/icons/linkedin.png'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                width: size.width * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const TextField(
                      minLines: 6,
                      maxLines: 20,
                      decoration: InputDecoration(
                        hintText: 'Your Message',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    EndIconButtonWidget(
                      color: colors.endIconButtonColor,
                      imageIcon: 'assets/icons/arrow_right.png',
                      label: 'Send message',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
