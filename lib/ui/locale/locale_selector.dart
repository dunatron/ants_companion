import 'package:ants_companion/domain/locales/locales.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class LocaleSelector extends StatelessWidget {
  const LocaleSelector({super.key});

  DropdownMenuItem<Locale> _buildMenuItem(Locale locale) =>
      DropdownMenuItem<Locale>(
        value: locale,
        child: Text(locale.languageCode.localeName()),
      );

  List<DropdownMenuItem<Locale>> _buildItems(List<Locale> locales) =>
      List<DropdownMenuItem<Locale>>.from(locales.map(_buildMenuItem));

  @override
  Widget build(BuildContext context) {
    final Locales locales = GetIt.I();

    final items = _buildItems(locales.supportedLocales());

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
  String localeName() => switch (this) {
        'en' => 'English',
        'fil' => 'Filipino',
        'es' => 'Spanish',
        _ => this,
      };
}
