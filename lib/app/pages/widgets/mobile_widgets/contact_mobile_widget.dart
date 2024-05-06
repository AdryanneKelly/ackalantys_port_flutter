import 'package:ackalantys/app/controllers/message_controller.dart';
import 'package:ackalantys/app/controllers/url_launcher_controller.dart';
import 'package:ackalantys/app/pages/components/card_contact_component.dart';
import 'package:ackalantys/app/pages/components/end_icon_button_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
import 'package:ackalantys/app/shared/urls/url_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContactMobileWidget extends StatelessWidget {
  const ContactMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.extension<ColorExtension>()!;
    final localization = AppLocalizations.of(context)!;
    UrlLauncherController urlLauncherController = UrlLauncherController();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController messageController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final controller = MessageController();
    return SizedBox(
      // height: size.height * 0.8,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'assets/images/contact-me.png',
                          height: size.height * 0.2,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        localization.contact,
                        style: theme.textTheme.titleLarge!.copyWith(
                          color: colors.titleSessionColor,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      SizedBox(
                        width: size.width * 0.8,
                        child: Text(localization.contactTitle, style: theme.textTheme.headlineLarge),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      SizedBox(
                        width: size.width * 0.8,
                        child: Text(
                          localization.contactDescription,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        children: [
                          CardContactComponent(
                            imageIcon: 'assets/icons/instagram.png',
                            onTap: () => urlLauncherController.launchURL(UrlUtils.instagram),
                          ),
                          CardContactComponent(
                            imageIcon: 'assets/icons/github.png',
                            onTap: () => urlLauncherController.launchURL(UrlUtils.github),
                          ),
                          CardContactComponent(
                            imageIcon: 'assets/icons/linkedin.png',
                            onTap: () => urlLauncherController.launchURL(UrlUtils.linkedin),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      // width: size.width * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: localization.contactHintName,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return localization.contactNameValidation;
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: localization.contactHintEmail,
                            ),
                            validator: (value) {
                              if (value!.isEmpty || !value.contains('@')) {
                                return localization.contactEmailValidation;
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
                            decoration: InputDecoration(
                              hintText: localization.contactHintMessage,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return localization.contactMessageValidation;
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
                            label: localization.contactSendMessage,
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                controller.sendMessage(
                                  name: nameController.text,
                                  email: emailController.text,
                                  message: messageController.text,
                                );
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.green,
                                    content: Text(localization.contactSentMessage),
                                    behavior: SnackBarBehavior.floating,
                                  ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
