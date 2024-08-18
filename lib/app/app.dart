import 'package:ants_companion/bootstrap/router.dart';
import 'package:ants_companion/core/snackbar_service.dart';

import 'package:ants_companion/domain/themes/themes.dart';
import 'package:ants_companion/ui/draggable_scroll_configuration.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:upgrader/upgrader.dart';

final appGlobalKey = GlobalKey();

class App extends StatelessWidget {
  const App({
    super.key,
    required this.currentLocale,
  });

  final Locale currentLocale;

  @override
  Widget build(BuildContext context) {
    final upgrader = Upgrader(debugDisplayAlways: false);

    final themes = GetIt.I<Themes>();

    return StreamBuilder(
      stream: themes.currentColorScheme(),
      builder: (context, snapshot) {
        final colorSeed = snapshot.data;
        if (colorSeed == null) {
          return const SizedBox();
        }
        return MaterialApp.router(
          scrollBehavior: DraggableScrollBehavior(),
          key: const ValueKey('antsApp'),
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: SnackbarService().scaffoldMessengerKey,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: colorSeed.color,
              brightness: colorSeed.brightness,
              dynamicSchemeVariant: colorSeed.dynamicSchemeVariant,
            ),
          ),
          routerConfig: routerConfig,
          locale: currentLocale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          builder: (context, child) {
            return UpgradeAlert(
              upgrader: upgrader,
              shouldPopScope: () => true,
              navigatorKey: routerConfig.routerDelegate.navigatorKey,
              child: child ?? const SizedBox(),
            );
          },
        );
      },
    );
  }
}
