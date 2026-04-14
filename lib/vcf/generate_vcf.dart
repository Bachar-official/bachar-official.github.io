import 'dart:js_interop';
import 'package:web/web.dart' as web;

import 'package:flutter/material.dart';
import 'package:profile/l10n/app_localizations.dart';
import 'package:profile/vcf/contact.dart';

void downloadVcf(BuildContext ctx) {
  final locale = AppLocalizations.of(ctx);
  final vcfContent = locale.code == 'en' ? contactEn : contactRu;
  final blob = web.Blob(
    [vcfContent] as JSArray<JSAny>,
    web.BlobPropertyBag(type: 'text/vcard;charset=utf-8'),
  );
  final url = web.URL.createObjectURL(blob);

  final anchor = web.HTMLAnchorElement()
    ..href = url
    ..setAttribute('download', '${locale.author}.vcf');
  anchor.click();

  web.URL.revokeObjectURL(url);
}
