import 'package:flutter/material.dart';
import 'package:profile/l10n/app_localizations.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    final brightness = Theme.of(context).brightness;
    
    return SizedBox(
      height: 22,
      child: DecoratedBox(
        decoration: BoxDecoration(border: BoxBorder.fromLTRB(top: BorderSide(color: brightness == Brightness.light ? const Color.fromARGB(255, 233, 233, 233) : const Color.fromARGB(255, 34, 34, 34)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('© ${DateTime.now().year} ${locale.author}'),
            Badge(
              backgroundColor: Colors.transparent,
              offset: const Offset(12, 0),
              label: const FlutterLogo(size: 15),
              child: Text(locale.builtWithFlutter),
            ),
          ],
        ),
      ),
    );
  }
}
