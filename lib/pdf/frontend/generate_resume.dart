import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:profile/l10n/app_localizations.dart';
import 'package:profile/pdf/components/courses_block.dart';
import 'package:profile/pdf/components/hard_skills_block.dart';
import 'package:profile/pdf/components/soft_skills_block.dart';
import 'package:web/web.dart' as web;

import 'package:profile/pdf/components/bio.dart';
import 'package:profile/pdf/components/hobbies_block.dart';
import 'package:profile/pdf/components/info.dart';
import 'package:profile/pdf/components/languages_block.dart';
import 'package:profile/pdf/components/projects_block.dart';
import 'package:profile/utils/load_utils.dart';

typedef ResumeArgs = ({ BuildContext context, bool? isFlutter });

Future<Uint8List> generateResume(ResumeArgs args) async {
  final context = args.context;
  final isFlutter = args.isFlutter ?? false;
  final locale = AppLocalizations.of(context);
  final doc = pw.Document(title: 'CV', author: 'Ivan Bacharnikov');
  final regularFont = await loadFont('assets/fonts/OpenSans-Regular.ttf');
  final boldFont = await loadFont('assets/fonts/OpenSans-Bold.ttf');
  final italicFont = await loadFont('assets/fonts/OpenSans-Italic.ttf');
  final symbolFont = await loadFont('assets/fonts/symbol.ttf');
  final divider = pw.SizedBox(height: 15);

  final avatar = await loadImage('assets/photos/avatar.png');
  final flags = {
    'ru': await loadImage('assets/flags/RU.png'),
    'en': await loadImage('assets/flags/GB.png'),
    'eo': await loadImage('assets/flags/EO.jpg'),
  };

  doc
    ..addPage(
      pw.MultiPage(
        pageTheme: pw.PageTheme(
          margin: const pw.EdgeInsets.all(20),
          theme: pw.ThemeData.withFont(
            base: pw.Font.ttf(regularFont),
            bold: pw.Font.ttf(boldFont),
            italic: pw.Font.ttf(italicFont),
          ),
        ),
        build: (ctx) => [
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Flexible(
                flex: 1,
                child: Bio(
                  locale: locale,
                  avatar: avatar,
                  symbolFont: pw.Font.ttf(symbolFont),
                ),
              ),
              pw.SizedBox(width: 20),
              pw.Flexible(
                flex: 4,
                child: Info(locale: locale, isFlutter: isFlutter),
              ),
            ],
          ),
        ],
      ),
    )
    ..addPage(
      pw.MultiPage(
        pageTheme: pw.PageTheme(
          margin: const pw.EdgeInsets.all(20),
          theme: pw.ThemeData.withFont(
            base: pw.Font.ttf(regularFont),
            bold: pw.Font.ttf(boldFont),
            italic: pw.Font.ttf(italicFont),
          ),
        ),
        build: (ctx) => [
          pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Header(
                level: 0,
                title: locale.hardSkills,
                child: pw.Text(locale.hardSkills),
              ),
              HardSkillsBlock(),
              divider,
              pw.Header(
                level: 0,
                title: locale.softSkills,
                child: pw.Text(locale.softSkills),
              ),
              SoftSkillsBlock(locale: locale),
              pw.Header(
                level: 0,
                title: locale.cources,
                child: pw.Text(locale.cources),
              ),
              CoursesBlock(locale: locale),
              divider,
              pw.Header(
                level: 0,
                title: locale.projects,
                child: pw.Text(locale.projects),
              ),
              ProjectsBlock(locale: locale),
              divider,
              pw.Header(
                level: 0,
                title: locale.languages,
                child: pw.Text(locale.languages),
              ),
              LanguagesBlock(locale: locale, flags: flags),
              divider,
              pw.Header(
                level: 0,
                title: locale.hobbies,
                child: pw.Text(locale.hobbies),
              ),
              HobbiesBlock(locale: locale),
            ],
          ),
        ],
      ),
    );

  return doc.save();
}

Future<void> downloadResume(
    GlobalKey<ScaffoldMessengerState> scaffoldKey, bool isFlutter) async {
  if (kIsWeb) {
    final pdf = await compute(generateResume, (context: scaffoldKey.currentContext!, isFlutter: isFlutter));
    List<int> arr = List.from(pdf);

    web.HTMLAnchorElement()
      ..href =
          "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(arr)}"
      ..setAttribute("download", "Ivan Bacharnikov.pdf")
      ..click();
  }
}
