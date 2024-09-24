import 'dart:async';

import 'package:ants_companion/domain/ads/ads_service.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

final consentDebugSettings = ConsentDebugSettings(
  debugGeography: DebugGeography.debugGeographyEea,
  testIdentifiers: ["16D265166C7DAF515FA40F177BD4D2C3"],
);

class UserConsent {
  static Future<FormError?> initialize() async {
    final completer = Completer<FormError?>();
    final params = ConsentRequestParameters(
      consentDebugSettings: consentDebugSettings,
    );

    ConsentInformation.instance.requestConsentInfoUpdate(params, () async {
      // check if there is a form available to display
      // if the user is outside of the countries subject to the GDPR
      // this method will return false
      // result may vary depending on how you have configured the message
      if (await ConsentInformation.instance.isConsentFormAvailable()) {
        // proceed to display consent form
        // Load consent form
        await _loadConsentForm();
      } else {
        await _initialize();
      }

      completer.complete();
    }, (final error) {
      // Handle error
      completer.complete(error);
    });

    return completer.future;
  }

  static Future<bool> changePrivacyPreferences() async {
    final completer = Completer<bool>();

    ConsentInformation.instance.requestConsentInfoUpdate(
      ConsentRequestParameters(),
      () async {
        if (await ConsentInformation.instance.isConsentFormAvailable()) {
          ConsentForm.loadConsentForm((consentForm) {
            consentForm.show((formError) async {
              await _initialize();
            });
          }, (formError) {
            completer.complete(false);
          });
        } else {
          completer.complete(false);
        }
      },
      (error) {
        completer.complete(false);
      },
    );

    return completer.future;
  }

  static Future<FormError?> _loadConsentForm() {
    final completer = Completer<FormError?>();

    ConsentForm.loadConsentForm((consentForm) async {
      final status = await ConsentInformation.instance.getConsentStatus();
      if (status == ConsentStatus.required) {
        consentForm.show((formError) {
          completer.complete(_loadConsentForm());
        });
      } else {
        await _initialize();
        completer.complete();
      }
    }, (final formError) {
      // Handle Error
      completer.complete(formError);
    });

    return completer.future;
  }

  static Future<void> _initialize() async {
    // await MobileAds.instance.initialize();
    final ads = AdsService();
    ads.initialize();
  }
}
