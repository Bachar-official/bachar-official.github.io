import 'package:pdf/widgets.dart' as pw;
import 'package:profile/l10n/app_localizations.dart';
import 'package:profile/pdf/components/technical_block.dart';

class TechStackBlock extends pw.StatelessWidget {
  final AppLocalizations locale;
  TechStackBlock({required this.locale});

  @override
  pw.Widget build(pw.Context context) {
    return pw.Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        locale.reactHardSkills,
        locale.designLibrariesHardSkills,
        locale.flutterHardSkills,
        locale.toolsHardSkills,
        locale.miscHardSkills
      ].map((str) => TechnicalBlock(localeString: str)).toList(),
    );
  }
}
