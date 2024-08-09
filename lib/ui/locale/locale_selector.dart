import 'package:ants_companion/domain/locales/locales.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocaleSelector extends StatelessWidget {
  const LocaleSelector({super.key});

  DropdownMenuItem<Locale> _buildMenuItem(
    Locale locale,
    AppLocalizations l10n,
  ) =>
      DropdownMenuItem<Locale>(
        value: locale,
        child: Text(locale.languageCode.localeName(l10n)),
      );

  // List<DropdownMenuItem<Locale>> _buildItems(List<Locale> locales) =>
  //     List<DropdownMenuItem<Locale>>.from(locales.map(_buildMenuItem));

  List<DropdownMenuItem<Locale>> _buildItems(
    List<Locale> locales,
    AppLocalizations l10n,
  ) =>
      List<DropdownMenuItem<Locale>>.from(locales.map(
        (it) => _buildMenuItem(it, l10n),
      ));

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final Locales locales = GetIt.I();

    final items = _buildItems(locales.supportedLocales(), l10n);

    return StreamBuilder(
      stream: locales.currentLocale(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return const Center(child: Text('Error loading locales'));
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
        _ => this,
      };
}
