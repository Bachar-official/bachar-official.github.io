import 'package:pdf/widgets.dart' as pw;

class TechnicalBlock extends pw.StatelessWidget {
  final String localeString;

  TechnicalBlock({required this.localeString});

  @override
  pw.Widget build(pw.Context context) {
    final [header, tags] = localeString.split(':');
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          header,
          style: pw.Theme.of(context)
              .defaultTextStyle
              .copyWith(fontWeight: pw.FontWeight.bold),
        ),
        pw.Text(
          tags.split(';').join(' • '),
          style: const pw.TextStyle(
            fontSize: 10,
            lineSpacing: 1.5,
          ),
        ),
      ],
    );
  }
}
