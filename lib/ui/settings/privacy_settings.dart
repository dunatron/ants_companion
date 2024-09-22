import 'package:ants_companion/domain/user_consent/user_consent.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrivacySettings extends StatelessWidget {
  const PrivacySettings({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return FutureBuilder(
      future: ConsentInformation.instance.isConsentFormAvailable(),
      builder: (context, snapshot) {
        final bool visibility = snapshot.data ?? false;
        return Visibility(
          visible: visibility,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, bottom: 0),
                child: Text(l10n.privacy),
              ),
              // ListTile(
              //   leading: const Icon(Icons.private_connectivity),
              //   title: const Text('Reset Privacy Consent'),
              //   onTap: () => ConsentInformation.instance.reset(),
              // ),
              ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: Text(l10n.changePrivacyPreferences),
                onTap: () => UserConsent.changePrivacyPreferences(),
              ),
            ],
          ),
        );
      },
    );
  }
}
