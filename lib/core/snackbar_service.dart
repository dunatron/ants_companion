import 'dart:async';

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
    SnackbarType type = SnackbarType.info;
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
        timer.cancel();
        ExternalAppLauncher.launchAntsUndergroundKingdom();
        hideCurrent();
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
            final data = snapshot.data;
            final snackBarTheme = Theme.of(context).snackBarTheme;

            // final countdownText = data == null ? '${data ?? 5}';
            final countdownText = switch (data) {
              0 => 'GO',
              int() => data.toString(),
              null => '5',
            };

            return Row(
              children: [
                Expanded(
                  child: Text(
                    // 'Opening Ants Underground Kingdom',
                    'Launching Game',
                    // style: TextStyle(
                    //   fontSize: Theme.of(context).textTheme.displaySmall?.fontSize,
                    // ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
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

            // return Text(
            //   'Opening Ants Underground Kingdom in - ${data ?? 5}',
            //   // style: TextStyle(
            //   //   fontSize: Theme.of(context).textTheme.displaySmall?.fontSize,
            //   // ),
            // );
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
    Future.delayed(duration, () => closeSubject());
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
