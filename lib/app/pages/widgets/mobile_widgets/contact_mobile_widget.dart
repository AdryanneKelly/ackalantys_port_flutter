import 'package:ackalantys/app/pages/widgets/end_icon_button_widget.dart';
import 'package:ackalantys/app/shared/themes/color_extension.dart';
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
                ),
                SizedBox(
                  width: size.width * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: localization.contactHintName,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: localization.contactHintEmail,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      TextField(
                        minLines: 6,
                        maxLines: 20,
                        decoration: InputDecoration(
                          hintText: localization.contactHintMessage,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      EndIconButtonWidget(
                        color: colors.endIconButtonColor,
                        imageIcon: 'assets/icons/arrow_right.png',
                        label: localization.contactSendMessage,
                        onTap: () {},
                      )
                    ],
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
