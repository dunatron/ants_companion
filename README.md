# ants_companion

A new Flutter project.

## Getting Started

## ToDo

the list of features and what we need to do

## Generate l10n file

run this from the root of the project to generate the `l10n.yaml`  
The reason we are doing this is that it has secret keys now for open ai

```bash
dart run generate_l10n_yaml/generate_l10n_yaml.dart
```

We can the run the translate package
[found here](https://pub.dev/packages/arb_translate)

```
arb_translate
```

## Gemini console

[Gemini Console](https://aistudio.google.com/)

## l10n

The different languages we will support
[useful lang table](https://www.science.co.il/language/Locale-codes.php)  
[Android localiztion list](https://community.appinventor.mit.edu/t/android-localization-code-the-complete-list/7055)

- [x] English(en)
- Filipino(fil)
- Ukrainian(uk)
- Russian(ru)
- Italian - Italy(it)
- Spanish(es)
- Bulgarian(bg)
- Hungarian(hu)
- Dutch(nl) - Netherlands(nl-nl)
- Polish(pl)
- Arabic(ar) (alot of different LCID)
  - Arabic Egypt(ar-eg)
  - Arabic Saudi Arabia(ar-sa)
- Turkish(tr)
- German(de)
  - German - Germany(de-de)
- Vietnamese(vi)
- Macedonian(mk)
- Japanese(ja)
- Chinese(zh)

## Generate Icons for launcher

[App Icon](https://www.appicon.co/)

## Android Play Store

- [google play console](https://play.google.com/console/u)

## Android play store compliance

- [Developer Content Policy](https://play.google/developer-content-policy/)
- [App Bundle](https://developer.android.com/guide/app-bundle)
- [Play App Signing Terms](https://play.google/play-app-signing-terms/)
- [Play App Signing](https://support.google.com/googleplay/android-developer/answer/9842756?hl=en)

## Play store beta release

- 20 testers opted in for at least 14 days

#### Requirements

1. **Android app build file and app signing key**
   - Android uses two signing keys: upload and app signing.
   - [flutter release android](https://docs.flutter.dev/deployment/android)
   - [android official play store documentation](https://support.google.com/googleplay/android-developer/answer/9842756?hl=en&visit_id=638590377975321919-1281253226&rd=1)
2. **App name**
   - Ants Companion
3. **Short description**
4. **Full Description**
   - Ants Companion app is used as a guide to help users get the most out of "The Ants: Underground Kingdom"
   - Very useful to help know what the strongest ants are for different situations and what lineups you should use
   - Main Features
   - Ant Tier Ratings
   - Colony Action Scheduler
   - Scientific Information
   - Soldier Stats Comparison
   - Strongest lineups
5. App Icon
6. Feature Graphic
7. Video (Optional)
8. App screenshots (Phone/Tablet)
9. Privacy Policy
10. 20 testers for closed testing for 14 days opted in

## handy commands

```bash
open ios/Runner.xcworkspace
```

## handy resources

- [Get url scheme of any ios app](https://www.reddit.com/r/workflow/comments/2tlx29/get_url_scheme_of_any_app/)
- [Play console](https://play.google.com/)
- [Google Ad Mob](https://apps.admob.com/)
