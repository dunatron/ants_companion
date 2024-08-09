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
