import 'dart:async';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ants_companion/common/spacing.dart';
import 'package:ants_companion/domain/external_app_launcher/external_app_launcher.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

class SnackbarService {
  static final SnackbarService _instance = SnackbarService._internal();

  factory SnackbarService() {
    return _instance;
  }

  SnackbarService._internal();

  GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  void hideCurrent() =>
      scaffoldMessengerKey.currentState?.hideCurrentSnackBar();

  void showSnackbar(
    String message, {
    SnackbarType type = SnackbarType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: type.backgroundColor(),
        duration: duration,
      ),
    );
  }

  void showOpenAntsSnackbar() {
    Duration duration = const Duration(seconds: 5);
    int remainingSeconds = duration.inSeconds;

    BehaviorSubject<int>? subject = BehaviorSubject<int>();
    bool isSubjectClosed = false;

    // Function to close the BehaviorSubject
    void closeSubject() {
      if (!isSubjectClosed) {
        isSubjectClosed = true;
        subject.close();
      }
    }

    // Start countdown
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      remainingSeconds--;

      if (remainingSeconds <= 0) {
        subject.add(remainingSeconds);

        ExternalAppLauncher.launchAntsUndergroundKingdom();
        hideCurrent();
        timer.cancel();
      } else {
        subject.add(remainingSeconds);
      }
    });

    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        margin: const EdgeInsets.all(Spacing.xl),
        behavior: SnackBarBehavior.floating,
        elevation: 10,
        content: StreamBuilder(
          stream: subject.stream,
          builder: (context, snapshot) {
            final l10n = AppLocalizations.of(context);
            final data = snapshot.data;
            final snackBarTheme = Theme.of(context).snackBarTheme;

            final countdownText = switch (data) {
              0 => 'GO',
              int() => data.toString(),
              null => '5',
            };

            return Row(
              children: [
                Expanded(
                  child: Text(l10n.launchGame),
                ),
                const SizedBox(width: Spacing.l),
                Text(
                  countdownText,
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.displaySmall?.fontSize,
                    color: snackBarTheme.contentTextStyle?.color,
                  ),
                )
              ],
            );
          },
        ),
        action: SnackBarAction(
          label: 'Cancel',
          onPressed: () => closeSubject(),
        ),

        // backgroundColor: type.backgroundColor(),
        duration: duration,
      ),
    );
    // Ensure the BehaviorSubject is closed after Snackbar duration
    Future.delayed(
      /// the extra 3 seconds is so we don't have a race condition
      /// and accidentally close it too early
      Duration(seconds: duration.inSeconds + 3),
      () => closeSubject(),
    );
  }
}

enum SnackbarType { info, success, error }

extension on SnackbarType {
  Color backgroundColor() => switch (this) {
        SnackbarType.info => Colors.blue,
        SnackbarType.success => Colors.green,
        SnackbarType.error => Colors.red,
      };
}
