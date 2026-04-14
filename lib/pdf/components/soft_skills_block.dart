import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:profile/l10n/app_localizations.dart';
import 'package:profile/pdf/components/colored_tag.dart';

class SoftSkillsBlock extends pw.StatelessWidget {
  final AppLocalizations locale;

  SoftSkillsBlock({required this.locale});

  @override
  pw.Widget build(pw.Context context) {
    return pw.Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: locale.allSoftSkills
          .split(',')
          .map((skill) => ColoredTag(
                text: skill,
                color: const PdfColor.fromInt(0xFF448AFF),
              ))
          .toList(),
    );
  }
}
