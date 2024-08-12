import 'package:ants_companion/domain/locales/locales.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocaleSelector extends StatelessWidget {
  const LocaleSelector({super.key});

  DropdownMenuItem<Locale> _buildMenuItem(
    Locale locale,
    AppLocalizations l10n,
    TextTheme textTheme,
  ) =>
      DropdownMenuItem<Locale>(
        value: locale,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              locale.languageCode.localeName(l10n),
              style: textTheme.bodyMedium?.copyWith(height: 1),
            ),
            Text(
              ' | ',
              style: textTheme.bodyLarge?.copyWith(height: 1),
            ),
            Text(
              locale.languageCode.fixedLocaleName(),
              style: textTheme.labelSmall?.copyWith(height: 1),
            ),
          ],
        ),
      );
  // DropdownMenuItem<Locale>(
  //   value: locale,
  //   child: Text(locale.languageCode.localeName(l10n)),
  // );
  // DropdownMenuItem<Locale>(
  //   value: locale,
  //   child: ListTile(
  //     title: Text(
  //       locale.languageCode.localeName(l10n),
  //     ),
  //     subtitle: Text('Subtitle'),
  //   ),
  // );

  // List<DropdownMenuItem<Locale>> _buildItems(List<Locale> locales) =>
  //     List<DropdownMenuItem<Locale>>.from(locales.map(_buildMenuItem));

  List<DropdownMenuItem<Locale>> _buildItems(
    List<Locale> locales,
    AppLocalizations l10n,
    TextTheme textTheme,
  ) =>
      List<DropdownMenuItem<Locale>>.from(locales.map(
        (it) => _buildMenuItem(it, l10n, textTheme),
      ));

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final Locales locales = GetIt.I();

    final textTheme = Theme.of(context).textTheme;

    final items = _buildItems(locales.supportedLocales(), l10n, textTheme);

    return StreamBuilder(
      stream: locales.currentLocale(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text(l10n.localeSelectorError));
        }
        final currentLocale = snapshot.data;

        return DropdownButton<Locale>(
          value: currentLocale,
          items: items,
          onChanged: (value) => value != null ? locales.setLocale(value) : null,
        );
      },
    );
  }
}

extension on String {
  // ToDo: this might be better as there natural languages...
  String localeName(AppLocalizations l10n) => switch (this) {
        'en' => l10n.english,
        'fil' => l10n.filipino,
        'uk' => l10n.ukrainian,
        'it' => l10n.italian,
        'es' => l10n.spanish,
        'bg' => l10n.bulgarian,
        'hu' => l10n.hungarian,
        'nl' => l10n.dutch,
        'pl' => l10n.polish,
        'ar' => l10n.arabic,
        'tr' => l10n.turkish,
        'de' => l10n.german,
        'ja' => l10n.japanese,
        'mk' => l10n.macedonian,
        'ru' => l10n.russian,
        'zh' => l10n.chinese,
        'vi' => l10n.vietnamese,
        _ => this,
      };

  String fixedLocaleName() => switch (this) {
        'en' => 'English',
        'fil' => 'Filipino',
        'uk' => 'Українська', // Ukrainian in its native script
        'it' => 'Italiano',
        'es' => 'Español',
        'bg' => 'Български', // Bulgarian in its native script
        'hu' => 'Magyar',
        'nl' => 'Nederlands',
        'pl' => 'Polski',
        'ar' => 'العربية', // Arabic in its native script
        'tr' => 'Türkçe',
        'de' => 'Deutsch',
        'ja' => '日本語', // Japanese in its native script
        'mk' => 'Македонски', // Macedonian in its native script
        'ru' => 'Русский', // Russian in its native script
        'zh' => '中文', // Chinese in its native script
        'vi' => 'Tiếng Việt', // Vietnamese in its native script
        _ => this,
      };
}
