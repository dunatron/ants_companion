import 'package:ants_companion/bootstrap/router.dart';
import 'package:ants_companion/common/theme/dark_color_scheme.dart';
import 'package:ants_companion/common/theme/light_color_scheme.dart';
import 'package:ants_companion/core/snackbar_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // L10n
    // final AppLic
    return MaterialApp.router(
      title: 'Ants Companion',
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: SnackbarService().scaffoldMessengerKey,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
      ),
      // themeMode: ThemeMode.dark,
      routerConfig: routerConfig(),
      locale: Locale('tl'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
