import 'package:flutter/material.dart';
import 'package:ncast/l10n/app_localizations.dart';

class NormalText extends StatelessWidget {
  const NormalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(AppLocalizations.of(context)!.moreThanBestTalksEver,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Color(0xFF5E5E5E),
            fontWeight: FontWeight.normal,
            fontSize: 20));
  }
}
