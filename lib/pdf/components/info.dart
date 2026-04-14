import 'package:pdf/widgets.dart' as pw;
import 'package:profile/l10n/app_localizations.dart';
import 'package:profile/pdf/components/experience_block.dart';

class Info extends pw.StatelessWidget {
  final AppLocalizations locale;
  final bool isFlutter;

  Info({required this.locale, required this.isFlutter});

  @override
  pw.Widget build(pw.Context context) {
    final divider = pw.SizedBox(height: 10);
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Header(
          level: 0,
          title: locale.experience,
          child: pw.Text(locale.experience),
        ),
        ExperienceBlock(locale: locale, isFlutter: isFlutter),
        divider,
      ],
    );
  }
}
