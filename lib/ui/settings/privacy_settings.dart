// import 'package:ants_companion/domain/user_consent/user_consent.dart';
// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

// class PrivacySettings {
//   static List<Widget> buildPrivacyWidgets() {
//     return [
//       const Padding(
//         padding: EdgeInsets.only(right: 16, left: 16, bottom: 0),
//         child: Text("Privacy"),
//       ),
//       ListTile(
//         leading: const Icon(Icons.private_connectivity),
//         title: const Text('Reset Privacy Consent'),
//         onTap: () => ConsentInformation.instance.reset(),
//       ),
//       ListTile(
//         leading: const Icon(Icons.privacy_tip_outlined),
//         title: const Text('Change Privacy Preferences'),
//         onTap: () => UserConsent.changePrivacyPreferences(),
//       ),
//     ];
//   }
// }

import 'package:ants_companion/domain/user_consent/user_consent.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class PrivacySettings extends StatelessWidget {
  const PrivacySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // future: ConsentInformation.instance.isConsentFormAvailable(),
      future: ConsentInformation.instance.isConsentFormAvailable(),
      builder: (context, snapshot) {
        final bool visibility = snapshot.data ?? false;

        return Visibility(
          visible: visibility,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 16, left: 16, bottom: 0),
                child: Text("Privacy"),
              ),
              ListTile(
                leading: const Icon(Icons.private_connectivity),
                title: const Text('Reset Privacy Consent'),
                onTap: () => ConsentInformation.instance.reset(),
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title: const Text('Change Privacy Preferences'),
                onTap: () => UserConsent.changePrivacyPreferences(),
              ),
            ],
          ),
        );
      },
    );
  }
}
