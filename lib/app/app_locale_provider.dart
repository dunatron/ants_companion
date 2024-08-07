import 'package:ants_companion/app/app.dart';
import 'package:ants_companion/app/loading_app_locale.dart';
import 'package:ants_companion/domain/locales/locales.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class AppLocaleProvider extends StatelessWidget {
  // const AppLocaleProvider(this.buildApp, {super.key});

  // final Widget Function(Locale locale) buildApp;

  const AppLocaleProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final Locales locales = GetIt.I();

    return StreamBuilder(
      stream: locales.currentLocale(),
      builder: (context, snapshot) {
        final currentLocale = snapshot.data;

        return currentLocale == null
            ? const LoadingAppLocale(key: ValueKey('loadingAppLocale'))
            : App(currentLocale: currentLocale);

        // return currentLocale == null
        //     ? const LoadingAppLocale(key: ValueKey('loadingAppLocale'))
        //     : buildApp(currentLocale);
      },
    );
  }
}
