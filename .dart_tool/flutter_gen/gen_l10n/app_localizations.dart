import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pt')
  ];

  /// Hi, I'm Adryanne Kelly
  ///
  /// In en, this message translates to:
  /// **'Hi, I\'m Adryanne Kelly'**
  String get hello;

  /// Software Developer
  ///
  /// In en, this message translates to:
  /// **'Software Developer'**
  String get occupation;

  /// Hey, guys! This is Adryanne Kelly, a software engineer passionate about challenges and discovering new solutions
  ///
  /// In en, this message translates to:
  /// **'Hey, guys! This is Adryanne Kelly, a software engineer passionate about challenges and discovering new solutions'**
  String get introduction;

  /// Home
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get menuHome;

  /// About
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get menuAbout;

  /// Projects
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get menuProject;

  /// Articles
  ///
  /// In en, this message translates to:
  /// **'Articles'**
  String get menuArticle;

  /// Contact
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get menuContact;

  /// My resume
  ///
  /// In en, this message translates to:
  /// **'My resume'**
  String get myresume;

  /// Get in touch
  ///
  /// In en, this message translates to:
  /// **'Get in touch'**
  String get getInTouch;

  /// About me
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get aboutMe;

  /// A bit of me...
  ///
  /// In en, this message translates to:
  /// **'A bit of me...'**
  String get aboutMeTitle;

  /// Hey, everyone! I'm Adryanne, a software engineer with expertise in mobile development using Flutter and web applications with PHP and Laravel. I recently completed a postgraduate program in Software Engineering and actively participate in communities like Flutterando, where I’m also a moderator, and He4rt Devs, where people know me as Ackalantys.
  ///
  /// Beyond coding, I enjoy sharing knowledge through articles and videos to support the developer ecosystem. In my downtime, I love a good book and playing games!
  ///
  /// In en, this message translates to:
  /// **'Hey, everyone! I\'m Adryanne, a software engineer with expertise in mobile development using Flutter and web applications with PHP and Laravel. I recently completed a postgraduate program in Software Engineering and actively participate in communities like Flutterando, where I’m also a moderator, and He4rt Devs, where people know me as Ackalantys. \n\nBeyond coding, I enjoy sharing knowledge through articles and videos to support the developer ecosystem. In my downtime, I love a good book and playing games!'**
  String get aboutMeDescription;

  /// Projects
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// Take a look at some of my projects
  ///
  /// In en, this message translates to:
  /// **'Take a look at some of my projects'**
  String get projectsTitle;

  /// Dev Links - Project
  ///
  /// In en, this message translates to:
  /// **'Dev Links - Project'**
  String get projectTitle1;

  /// Institutional website - Orbe Telecom
  ///
  /// In en, this message translates to:
  /// **'Institutional website - Orbe Telecom'**
  String get projectTitle2;

  /// Orbe Cliente
  ///
  /// In en, this message translates to:
  /// **'Orbe Cliente'**
  String get projectTitle3;

  /// Personal project to create a personalised links page
  ///
  /// In en, this message translates to:
  /// **'Personal project to create a personalised links page '**
  String get descriptionProject1;

  /// Orbe Telecom's corporate website
  ///
  /// In en, this message translates to:
  /// **'Orbe Telecom\'s corporate website'**
  String get descriptionProject2;

  /// Application for customers with many integrated facilities
  ///
  /// In en, this message translates to:
  /// **'Application for customers with many integrated facilities'**
  String get descriptionProject3;

  /// See all
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get seeAll;

  /// Articles
  ///
  /// In en, this message translates to:
  /// **'Articles'**
  String get articles;

  /// Take a look at some of my articles!
  ///
  /// In en, this message translates to:
  /// **'Take a look at some of my articles!'**
  String get articlesTitle;

  /// No description provided for @articleTitle1.
  ///
  /// In en, this message translates to:
  /// **'How to make a multi-language application with Flutter - PT-BR'**
  String get articleTitle1;

  /// No description provided for @articleTitle2.
  ///
  /// In en, this message translates to:
  /// **'Understanding State Pattern — Flutter PT-BR'**
  String get articleTitle2;

  /// No description provided for @articleTitle3.
  ///
  /// In en, this message translates to:
  /// **'Autofilling fields in FilamentPHP using API - PT-BR'**
  String get articleTitle3;

  /// No description provided for @descriptionArticle1.
  ///
  /// In en, this message translates to:
  /// **'Neste artigo, vou guiá-lo passo a passo sobre como implementar um seletor de idioma moderno e...'**
  String get descriptionArticle1;

  /// No description provided for @descriptionArticle2.
  ///
  /// In en, this message translates to:
  /// **'No universo Flutter encontramos diversas formas de lidar com gerência de estado e...'**
  String get descriptionArticle2;

  /// No description provided for @descriptionArticle3.
  ///
  /// In en, this message translates to:
  /// **'Neste artigo, vou mostrar como você pode consumir API e utilizá-la para autopreenchimento de campos...'**
  String get descriptionArticle3;

  /// Contact
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// Enjoyed my work? Send me a message
  ///
  /// In en, this message translates to:
  /// **'Enjoyed my work? Send me a message'**
  String get contactTitle;

  /// Contact me by sending me a message or via my social networks
  ///
  /// In en, this message translates to:
  /// **'Contact me by sending me a message or via my social networks'**
  String get contactDescription;

  /// Name
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get contactHintName;

  /// Please enter a name
  ///
  /// In en, this message translates to:
  /// **'Please enter a name'**
  String get contactNameValidation;

  /// Email
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get contactHintEmail;

  /// Please enter an email
  ///
  /// In en, this message translates to:
  /// **'Please enter an email'**
  String get contactEmailValidation;

  /// Your message
  ///
  /// In en, this message translates to:
  /// **'Your message'**
  String get contactHintMessage;

  /// Please enter a message
  ///
  /// In en, this message translates to:
  /// **'Please enter a message'**
  String get contactMessageValidation;

  /// Send message
  ///
  /// In en, this message translates to:
  /// **'Send message'**
  String get contactSendMessage;

  /// Message sent!
  ///
  /// In en, this message translates to:
  /// **'Message sent!'**
  String get contactSentMessage;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'pt': return AppLocalizationsPt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
