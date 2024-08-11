import 'package:ants_companion/bootstrap/router.dart';
import 'package:ants_companion/common/theme/dark_color_scheme.dart';
import 'package:ants_companion/common/theme/light_color_scheme.dart';
import 'package:ants_companion/core/snackbar_service.dart';
import 'package:ants_companion/ui/draggable_scroll_configuration.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
);

final darkTheme = ThemeData(
  colorScheme: darkColorScheme,
);

class App extends StatelessWidget {
  const App({
    super.key,
    required this.currentLocale,
  });

  final Locale currentLocale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scrollBehavior: DraggableScrollBehavior(),
      key: const ValueKey('antsApp'),
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: SnackbarService().scaffoldMessengerKey,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: routerConfig(),
      locale: currentLocale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
