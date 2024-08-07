import 'dart:async';

import 'package:flutter/material.dart';

import 'package:ants_companion/app/app.dart';
import 'package:ants_companion/core/log/loggers.dart';
import 'package:ants_companion/bootstrap/dependency_injection.dart';

Future<void> bootstrap() async {
  final logger = appLogger(App);
  WidgetsFlutterBinding.ensureInitialized();

  // unawaited(MobileAds.instance.initialize());

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

  await setupDI();
}
