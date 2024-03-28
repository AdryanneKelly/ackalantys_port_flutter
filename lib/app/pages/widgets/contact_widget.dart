import 'package:ackalantys/app/controller/message_controller.dart';
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
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController messageController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final controller = MessageController();
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
                  Image.asset(
                    'assets/images/contact-me.png',
                    height: size.height * 0.2,
                  ),
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
                  SizedBox(
                    width: size.width * 0.3,
                    child: Text('Enjoyed my work? Let’s work together', style: theme.textTheme.headlineLarge),
                  ),
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
              Form(
                key: formKey,
                child: SizedBox(
                  width: size.width * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          hintText: 'Name',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                        ),
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Please enter an email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextFormField(
                        controller: messageController,
                        minLines: 6,
                        maxLines: 20,
                        decoration: const InputDecoration(
                          hintText: 'Your Message',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a message';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      EndIconButtonWidget(
                        color: colors.endIconButtonColor,
                        imageIcon: 'assets/icons/arrow_right.png',
                        label: 'Send message',
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            controller.sendMessage(
                              name: nameController.text,
                              email: emailController.text,
                              message: messageController.text,
                            );

                            nameController.clear();
                            emailController.clear();
                            messageController.clear();
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
