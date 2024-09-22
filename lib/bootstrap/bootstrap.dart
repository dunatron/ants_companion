import 'dart:async';

import 'package:ants_companion/app/app_locale_provider.dart';
import 'package:ants_companion/domain/notifications/local_notifications.dart';
import 'package:flutter/material.dart';

import 'package:ants_companion/app/app.dart';
import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/bootstrap/dependency_injection.dart';

Future<void> bootstrap() async {
  final logger = appLogger(App);

  void catchUnhandledExceptions(Object error, StackTrace? stack) {
    // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    debugPrintStack(stackTrace: stack, label: error.toString());
  }

  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    WidgetsFlutterBinding.ensureInitialized();

    FlutterError.onError = (errorDetails) {
      logger.e(errorDetails.exception);
      // FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };

    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    WidgetsBinding.instance.platformDispatcher.onError = (error, stack) {
      logger.e('Unhandled error ${error.toString()}', stackTrace: stack);
      // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };

    // AdsService.preCheck();

    await LocalNotifications.init();

    await setupDI();

    FlutterError.onError = (FlutterErrorDetails details) {
      catchUnhandledExceptions(details.exception, details.stack);
    };

    runApp(const AppLocaleProvider());
  }, catchUnhandledExceptions);
}
