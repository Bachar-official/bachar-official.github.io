import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
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
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @code.
  ///
  /// In en, this message translates to:
  /// **'en'**
  String get code;

  /// No description provided for @author.
  ///
  /// In en, this message translates to:
  /// **'Ivan Bacharnikov'**
  String get author;

  /// No description provided for @position.
  ///
  /// In en, this message translates to:
  /// **'Frontend/Flutter developer'**
  String get position;

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @tg.
  ///
  /// In en, this message translates to:
  /// **'Telegram'**
  String get tg;

  /// No description provided for @github.
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get github;

  /// No description provided for @anotherLanguage.
  ///
  /// In en, this message translates to:
  /// **'Переключиться на русский'**
  String get anotherLanguage;

  /// No description provided for @lightTheme.
  ///
  /// In en, this message translates to:
  /// **'Light theme'**
  String get lightTheme;

  /// No description provided for @darkTheme.
  ///
  /// In en, this message translates to:
  /// **'Dark theme'**
  String get darkTheme;

  /// No description provided for @aboutMe.
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get aboutMe;

  /// No description provided for @experience.
  ///
  /// In en, this message translates to:
  /// **'Experience'**
  String get experience;

  /// No description provided for @education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get education;

  /// No description provided for @languages.
  ///
  /// In en, this message translates to:
  /// **'Languages'**
  String get languages;

  /// No description provided for @hobbies.
  ///
  /// In en, this message translates to:
  /// **'Hobbies'**
  String get hobbies;

  /// No description provided for @cources.
  ///
  /// In en, this message translates to:
  /// **'Courses'**
  String get cources;

  /// No description provided for @techStack.
  ///
  /// In en, this message translates to:
  /// **'Tech stack'**
  String get techStack;

  /// No description provided for @currentCity.
  ///
  /// In en, this message translates to:
  /// **'Orenburg, Russia'**
  String get currentCity;

  /// No description provided for @untilNow.
  ///
  /// In en, this message translates to:
  /// **'until now'**
  String get untilNow;

  /// No description provided for @exp0.
  ///
  /// In en, this message translates to:
  /// **'Cinimex:Senior Developer:Frontend development in various design systems for the banking sector. Creation a corporate UI-kit.:2019-10-01'**
  String get exp0;

  /// No description provided for @exp2.
  ///
  /// In en, this message translates to:
  /// **'Orenburg State University:Senior Lecturer:Taught the disciplines \"Development of mobile applications (Flutter)\" and \"Development of client web applications (React)\":2023-09-01:2023-12-01'**
  String get exp2;

  /// No description provided for @exp1.
  ///
  /// In en, this message translates to:
  /// **'aurorafirst.ai:Flutter developer:Development of new and modification of old widgets for AI assistant:2024-09-01:2024-12-01'**
  String get exp1;

  /// No description provided for @ed1.
  ///
  /// In en, this message translates to:
  /// **'Orenburg College of Statistics, Economics and Informatics:Technician:Computers, complexes, systems and networks:2013-07-01'**
  String get ed1;

  /// No description provided for @ed0.
  ///
  /// In en, this message translates to:
  /// **'Orenburg State University:Bachelor:Informatics and Computer Science:2019-07-01'**
  String get ed0;

  /// No description provided for @lg0.
  ///
  /// In en, this message translates to:
  /// **'Russian:ru:Native'**
  String get lg0;

  /// No description provided for @lg1.
  ///
  /// In en, this message translates to:
  /// **'English:en:B1 (Intermediate)'**
  String get lg1;

  /// No description provided for @lg2.
  ///
  /// In en, this message translates to:
  /// **'Esperanto:eo:A1 (Beginner)'**
  String get lg2;

  /// No description provided for @allHobbies.
  ///
  /// In en, this message translates to:
  /// **'Radio amateur,Cyclist,Photographer,YouTuber,Quadcopter pilot'**
  String get allHobbies;

  /// No description provided for @collapseAll.
  ///
  /// In en, this message translates to:
  /// **'Collapse all'**
  String get collapseAll;

  /// No description provided for @expandAll.
  ///
  /// In en, this message translates to:
  /// **'Expand all'**
  String get expandAll;

  /// No description provided for @downloadContact.
  ///
  /// In en, this message translates to:
  /// **'Download vCard'**
  String get downloadContact;

  /// No description provided for @downloadCv.
  ///
  /// In en, this message translates to:
  /// **'Download CV'**
  String get downloadCv;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Pet-projects'**
  String get projects;

  /// No description provided for @pr0.
  ///
  /// In en, this message translates to:
  /// **'QSO Logger;https://github.com/Bachar-official/flutter_qso;Flutter app for or logging radio HAM QSO'**
  String get pr0;

  /// No description provided for @pr1.
  ///
  /// In en, this message translates to:
  /// **'CMD_BOT;https://github.com/Bachar-official/dart_cmd_bot;Telegram bot for remote maintenance of a work computer.'**
  String get pr1;

  /// No description provided for @pr2.
  ///
  /// In en, this message translates to:
  /// **'rtmidi_dart;https://github.com/Bachar-official/rtmidi_dart;Flutter/Dart FFI plugin for interacting with MIDI devices'**
  String get pr2;

  /// No description provided for @crs0.
  ///
  /// In en, this message translates to:
  /// **'Flutter mobile developer;OTUS;2022-06-01'**
  String get crs0;

  /// No description provided for @crs1.
  ///
  /// In en, this message translates to:
  /// **'Mobile development school [Flutter];Yandex;2024-08-01'**
  String get crs1;

  /// No description provided for @tgLink.
  ///
  /// In en, this message translates to:
  /// **'https://t.me/Bachar_official'**
  String get tgLink;

  /// No description provided for @emailLink.
  ///
  /// In en, this message translates to:
  /// **'mailto:ibacharnikov@gmail.com'**
  String get emailLink;

  /// No description provided for @githubLink.
  ///
  /// In en, this message translates to:
  /// **'https://github.com/Bachar-official'**
  String get githubLink;

  /// No description provided for @pdfReady.
  ///
  /// In en, this message translates to:
  /// **'PDF generation...'**
  String get pdfReady;

  /// No description provided for @softSkills.
  ///
  /// In en, this message translates to:
  /// **'Soft skills'**
  String get softSkills;

  /// No description provided for @allSoftSkills.
  ///
  /// In en, this message translates to:
  /// **'Public speaking,Teaching,Self-learning,Responsibility,Determination,Enthusiasm'**
  String get allSoftSkills;

  /// No description provided for @pdfFlutterExp0.
  ///
  /// In en, this message translates to:
  /// **'Cinimex:Senior Developer:Implemented a corporate mobile app storage system (Flutter + Dart + PostgreSQL) - APK/IPA recognition, admin panel, update tracking;Developed a mobile app for a merch store from scratch using Flutter with CI/CD via GitLab Runner;Participated in pre-sales and solution architecture design;Developed and supported a corporate UI kit;Configured CI/CD (GitLab Runner, GitHub Workflow);Conducted code reviews, interviews, and mentoring;Served as a leader of the Flutter community within the company (meetups, implementation of new practices);Supervised student pre-graduation internships (OpenAPI/Swagger for frontend):2019-10-01'**
  String get pdfFlutterExp0;

  /// No description provided for @pdfReactExp0.
  ///
  /// In en, this message translates to:
  /// **'Cinimex:Senior Developer:Developed a configurable architecture for a React application (microfrontend, Webpack, dynamic routes), reducing code duplication between projects;Ensured stable support for a legacy project based on React class components without increasing technical debt;Implemented integration with Keycloak - tokens, sessions, role-based routing, phone confirmation;Participated in the pre-sale - architecture with WebAssembly (Clang + Emscripten), labor intensity assessment;Developed a customizable UI kit based on Mantine (Figma, CI/CD via GitLab Runner in Artifactory);Conducted code reviews, interviews, mentoring;Supervised students\' pre-graduation internship (OpenAPI/Swagger for frontend):2019-10-01'**
  String get pdfReactExp0;

  /// No description provided for @builtWithFlutter.
  ///
  /// In en, this message translates to:
  /// **'Built with'**
  String get builtWithFlutter;

  /// No description provided for @reactHardSkills.
  ///
  /// In en, this message translates to:
  /// **'React ecosystem:React 18+;JavaScript;TypeScript;Redux Toolkit;React Query'**
  String get reactHardSkills;

  /// No description provided for @designLibrariesHardSkills.
  ///
  /// In en, this message translates to:
  /// **'Design libraries:Material UI;Mantine UI;Omni UI;Admiral UI;Ant Design'**
  String get designLibrariesHardSkills;

  /// No description provided for @flutterHardSkills.
  ///
  /// In en, this message translates to:
  /// **'Flutter ecosystem:Flutter (Android/Linux/Windows);Dart;Provider;Riverpod;yx_state;yx_scope;dio;Firebase;Platform Channels'**
  String get flutterHardSkills;

  /// No description provided for @toolsHardSkills.
  ///
  /// In en, this message translates to:
  /// **'Tools and practices:GitLab Runner;GitHub Workflow;Docker;Unit & integration testing;Code review culture'**
  String get toolsHardSkills;

  /// No description provided for @miscHardSkills.
  ///
  /// In en, this message translates to:
  /// **'Misc:git;Storybook;Axios;CSS;Formik;HTML;JSON;Linux'**
  String get miscHardSkills;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
